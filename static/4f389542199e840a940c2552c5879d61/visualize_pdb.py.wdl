version 1.0

task VisualizePdbpy {
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
    String? create_picture_exit
    String? only_elements
    Boolean? virtual_atoms
  }
  command <<<
    visualize_pdb_py \
      ~{if defined(secondary_structure) then ("--secondary-structure " +  '"' + secondary_structure + '"') else ""} \
      ~{if (text) then "--text" else ""} \
      ~{if (long_range) then "--longrange" else ""} \
      ~{if (pseudo_knots) then "--pseudoknots" else ""} \
      ~{if (virtual_residues) then "--virtual-residues" else ""} \
      ~{if (color_residues) then "--color-residues" else ""} \
      ~{if (loops) then "--loops" else ""} \
      ~{if defined(chain) then ("--chain " +  '"' + chain + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(create_picture_exit) then ("--output " +  '"' + create_picture_exit + '"') else ""} \
      ~{if defined(only_elements) then ("--only-elements " +  '"' + only_elements + '"') else ""} \
      ~{if (virtual_atoms) then "--virtual-atoms" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    secondary_structure: "Enter a dot-bracket string for the\\nsecondary structure of this model"
    text: "Add labels to the figure."
    long_range: "Display long-range interactions"
    pseudo_knots: "Allow pseudoknots in the CG structure"
    virtual_residues: "Display the virtual residues as spheres"
    color_residues: "Color the residues according to the element they're in"
    loops: "Don't display the coarse-grain hairpin loops"
    chain: "DWhat chain you like to display."
    distance: "Draw the lines between specified virtual residues"
    create_picture_exit: "Create a picture of the scene and exit"
    only_elements: "Display only these elements element names should be\\nseparated by commas"
    virtual_atoms: "Display the virtual atoms"
  }
  output {
    File out_stdout = stdout()
  }
}