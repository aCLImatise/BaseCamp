version 1.0

task Graphlanpy {
  input {
    File? format
    Int? warnings
    String? positions
    String? dpi
    Int? size
    String? pad
    Boolean? external_legends
    Boolean? avoid_reordering
    String input_tree
    String output_image
  }
  command <<<
    graphlan_py \
      ~{input_tree} \
      ~{output_image} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(warnings) then ("--warnings " +  '"' + warnings + '"') else ""} \
      ~{if defined(positions) then ("--positions " +  '"' + positions + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(pad) then ("--pad " +  '"' + pad + '"') else ""} \
      ~{if (external_legends) then "--external_legends" else ""} \
      ~{if (avoid_reordering) then "--avoid_reordering" else ""}
  >>>
  parameter_meta {
    format: "['output_image_format']\\nset the format of the output image (default none\\nmeaning that the format is guessed from the output\\nfile extension)"
    warnings: "set whether warning messages should be reported or not\\n(default 1)"
    positions: "set whether the absolute position of the points should\\nbe reported on the standard output. The two\\ncohordinates are r and theta"
    dpi: "the dpi of the output image for non vectorial formats"
    size: "the size of the output image (in inches, default 7.0)"
    pad: "the distance between the most external graphical\\nelement and the border of the image"
    external_legends: "specify whether the two external legends should be put\\nin separate file or keep them along with the image\\n(default behavior)"
    avoid_reordering: "specify whether the tree will be reorder or not\\n(default the tree will be reordered)"
    input_tree: "the input tree in PhyloXML format"
    output_image: "the output image, the format is guessed from the\\nextension unless --format is given. Available file\\nformats are: png, pdf, ps, eps, svg"
  }
  output {
    File out_stdout = stdout()
    File out_format = "${in_format}"
  }
}