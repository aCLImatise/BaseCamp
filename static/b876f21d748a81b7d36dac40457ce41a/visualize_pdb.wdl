version 1.0

task VisualizePdb.py {
  input {
    String? secondary_structure
    Boolean? text
    Boolean? long_range
    Boolean? pseudo_knots
    Boolean? virtual_residues
    Boolean? color_residues
    Boolean? loops
    String? chain
    String? distance
    String? create_picture_scene
    String? only_elements
    Boolean? virtual_atoms
  }
  command <<<
    visualize_pdb.py \
      ~{if defined(secondary_structure) then ("--secondary-structure " +  '"' + secondary_structure + '"') else ""} \
      ~{true="--text" false="" text} \
      ~{true="--longrange" false="" long_range} \
      ~{true="--pseudoknots" false="" pseudo_knots} \
      ~{true="--virtual-residues" false="" virtual_residues} \
      ~{true="--color-residues" false="" color_residues} \
      ~{true="--loops" false="" loops} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(create_picture_scene) then ("--output " +  '"' + create_picture_scene + '"') else ""} \
      ~{if defined(only_elements) then ("--only-elements " +  '"' + only_elements + '"') else ""} \
      ~{true="--virtual-atoms" false="" virtual_atoms}
  >>>
  parameter_meta {
    secondary_structure: "Enter a dot-bracket string for the secondary structure of this model"
    text: "Add labels to the figure."
    long_range: "Display long-range interactions"
    pseudo_knots: "Allow pseudoknots in the CG structure"
    virtual_residues: "Display the virtual residues as spheres"
    color_residues: "Color the residues according to the element they're in"
    loops: "Don't display the coarse-grain hairpin loops"
    chain: "DWhat chain you like to display."
    distance: "Draw the lines between specified virtual residues"
    create_picture_scene: "Create a picture of the scene and exit"
    only_elements: "Display only these elements element names should be separated by commas"
    virtual_atoms: "Display the virtual atoms"
  }
}