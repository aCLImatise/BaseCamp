version 1.0

task VisualizeCg.py {
  input {
    String? highlight
    String? create_picture_scene
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
    Boolean? rainbow
    String? only_elements
    String? color_gradual
  }
  command <<<
    visualize_cg.py \
      ~{if defined(highlight) then ("--highlight " +  '"' + highlight + '"') else ""} \
      ~{if defined(create_picture_scene) then ("--output " +  '"' + create_picture_scene + '"') else ""} \
      ~{true="--longrange" false="" long_range} \
      ~{true="--loops" false="" loops} \
      ~{true="--cones" false="" cones} \
      ~{true="--text" false="" text} \
      ~{true="--align" false="" align} \
      ~{true="--encompassing-stems" false="" encompassing_stems} \
      ~{true="--virtual-atoms" false="" virtual_atoms} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(residue_distance) then ("--residue-distance " +  '"' + residue_distance + '"') else ""} \
      ~{true="--basis" false="" basis} \
      ~{if defined(stem_color) then ("--stem-color " +  '"' + stem_color + '"') else ""} \
      ~{if defined(multi_loop_color) then ("--multiloop-color " +  '"' + multi_loop_color + '"') else ""} \
      ~{true="--batch" false="" batch} \
      ~{true="--sidechain-atoms" false="" side_chain_atoms} \
      ~{true="--rainbow" false="" rainbow} \
      ~{if defined(only_elements) then ("--only-elements " +  '"' + only_elements + '"') else ""} \
      ~{if defined(color_gradual) then ("--color-gradual " +  '"' + color_gradual + '"') else ""}
  >>>
  parameter_meta {
    highlight: "Highlight some elements"
    create_picture_scene: "Create a picture of the scene and exit"
    long_range: "Display long-range interactions"
    loops: "Don't display the coarse-grain hairpin loops"
    cones: "Display cones that portrude from the stems"
    text: "Add labels to the figure."
    align: "Align all of the structures with the first"
    encompassing_stems: "Show the big stems that encompass the colinear ones."
    virtual_atoms: "Display the virtual atoms"
    distance: "Draw the lines between specified virtual residues"
    residue_distance: "Draw a line between residue distances"
    basis: "Display the coordinate basis of each element"
    stem_color: "The default color in coarse-grain drawings"
    multi_loop_color: "The default color in coarse-grain drawings"
    batch: "Start pymol in batch mode"
    side_chain_atoms: "Include the sidechain atoms. Automatically enables --virtual-atoms"
    rainbow: "Color each of the nucleotide positions (i.e. average atoms) according to the colors of the rainbow and their position"
    only_elements: "Display only these elements element names should be separated by commas"
    color_gradual: "Color the specified elementsgradually from one to the other, example (i1,i4,m1)"
  }
}