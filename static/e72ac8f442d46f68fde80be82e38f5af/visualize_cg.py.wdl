version 1.0

task VisualizeCgpy {
  input {
    String? highlight
    String? create_picture_exit
    Boolean? long_range
    Boolean? loops
    Boolean? cones
    Boolean? text
    Boolean? align
    Boolean? encompassing_stems
    Boolean? virtual_atoms
    String? distance
    String? residue_distance
    Boolean? basis
    String? stem_color
    String? multi_loop_color
    Boolean? batch
    Boolean? side_chain_atoms
    String? only_elements
    Int? color_gradual
  }
  command <<<
    visualize_cg_py \
      ~{if defined(highlight) then ("--highlight " +  '"' + highlight + '"') else ""} \
      ~{if defined(create_picture_exit) then ("--output " +  '"' + create_picture_exit + '"') else ""} \
      ~{if (long_range) then "--longrange" else ""} \
      ~{if (loops) then "--loops" else ""} \
      ~{if (cones) then "--cones" else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (align) then "--align" else ""} \
      ~{if (encompassing_stems) then "--encompassing-stems" else ""} \
      ~{if (virtual_atoms) then "--virtual-atoms" else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(residue_distance) then ("--residue-distance " +  '"' + residue_distance + '"') else ""} \
      ~{if (basis) then "--basis" else ""} \
      ~{if defined(stem_color) then ("--stem-color " +  '"' + stem_color + '"') else ""} \
      ~{if defined(multi_loop_color) then ("--multiloop-color " +  '"' + multi_loop_color + '"') else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if (side_chain_atoms) then "--sidechain-atoms" else ""} \
      ~{if defined(only_elements) then ("--only-elements " +  '"' + only_elements + '"') else ""} \
      ~{if defined(color_gradual) then ("--color-gradual " +  '"' + color_gradual + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    highlight: "Highlight some elements"
    create_picture_exit: "Create a picture of the scene and exit"
    long_range: "Display long-range interactions"
    loops: "Don't display the coarse-grain hairpin loops"
    cones: "Display cones that portrude from the stems"
    text: "Add labels to the figure."
    align: "Align all of the structures with the first"
    encompassing_stems: "Show the big stems that encompass the colinear ones."
    virtual_atoms: "Color each of the nucleotide positions (i.e. average"
    distance: "Draw the lines between specified virtual residues"
    residue_distance: "Draw a line between residue distances"
    basis: "Display the coordinate basis of each element"
    stem_color: "The default color in coarse-grain drawings"
    multi_loop_color: "The default color in coarse-grain drawings"
    batch: "Start pymol in batch mode"
    side_chain_atoms: "Include the sidechain atoms. Automatically enables"
    only_elements: "Display only these elements element names should be\\nseparated by commas"
    color_gradual: "Color the specified elementsgradually from one to the\\nother, example (i1,i4,m1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}