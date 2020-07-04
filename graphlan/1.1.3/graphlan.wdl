version 1.0

task Graphlan.py {
  input {
    Boolean? format
    String? warnings
    String? positions
    String? dpi
    String? size
    String? pad
    Boolean? external_legends
    Boolean? avoid_reordering
    String input_tree
    String output_image
  }
  command <<<
    graphlan.py \
      ~{input_tree} \
      ~{output_image} \
      ~{true="--format" false="" format} \
      ~{if defined(warnings) then ("--warnings " +  '"' + warnings + '"') else ""} \
      ~{if defined(positions) then ("--positions " +  '"' + positions + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{true="--external_legends" false="" external_legends} \
      ~{true="--avoid_reordering" false="" avoid_reordering}
  >>>
  parameter_meta {
    format: "['output_image_format'] set the format of the output image (default none meaning that the format is guessed from the output file extension)"
    warnings: "set whether warning messages should be reported or not (default 1)"
    positions: "set whether the absolute position of the points should be reported on the standard output. The two cohordinates are r and theta"
    dpi: "the dpi of the output image for non vectorial formats"
    size: "the size of the output image (in inches, default 7.0)"
    pad: "the distance between the most external graphical element and the border of the image"
    external_legends: "specify whether the two external legends should be put in separate file or keep them along with the image (default behavior)"
    avoid_reordering: "specify whether the tree will be reorder or not (default the tree will be reordered)"
    input_tree: "the input tree in PhyloXML format"
    output_image: "the output image, the format is guessed from the extension unless --format is given. Available file formats are: png, pdf, ps, eps, svg"
  }
}