class: CommandLineTool
id: visualize_pdb.py.cwl
inputs:
- id: in_secondary_structure
  doc: "Enter a dot-bracket string for the\nsecondary structure of this model"
  type: string?
  inputBinding:
    prefix: --secondary-structure
- id: in_text
  doc: Add labels to the figure.
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_long_range
  doc: Display long-range interactions
  type: boolean?
  inputBinding:
    prefix: --longrange
- id: in_pseudo_knots
  doc: Allow pseudoknots in the CG structure
  type: boolean?
  inputBinding:
    prefix: --pseudoknots
- id: in_virtual_residues
  doc: Display the virtual residues as spheres
  type: boolean?
  inputBinding:
    prefix: --virtual-residues
- id: in_color_residues
  doc: Color the residues according to the element they're in
  type: boolean?
  inputBinding:
    prefix: --color-residues
- id: in_loops
  doc: Don't display the coarse-grain hairpin loops
  type: boolean?
  inputBinding:
    prefix: --loops
- id: in_chain
  doc: DWhat chain you like to display.
  type: string?
  inputBinding:
    prefix: --chain
- id: in_distance
  doc: Draw the lines between specified virtual residues
  type: string?
  inputBinding:
    prefix: --distance
- id: in_output
  doc: Create a picture of the scene and exit
  type: string?
  inputBinding:
    prefix: --output
- id: in_only_elements
  doc: "Display only these elements element names should be\nseparated by commas"
  type: string?
  inputBinding:
    prefix: --only-elements
- id: in_virtual_atoms
  doc: Display the virtual atoms
  type: boolean?
  inputBinding:
    prefix: --virtual-atoms
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- visualize_pdb.py
