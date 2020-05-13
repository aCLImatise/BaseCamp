class: CommandLineTool
id: visualize_pdb.py.cwl
inputs:
- id: secondary_structure
  doc: Enter a dot-bracket string for the secondary structure of this model
  type: string
  inputBinding:
    prefix: --secondary-structure
- id: text
  doc: Add labels to the figure.
  type: boolean
  inputBinding:
    prefix: --text
- id: long_range
  doc: Display long-range interactions
  type: boolean
  inputBinding:
    prefix: --longrange
- id: pseudo_knots
  doc: Allow pseudoknots in the CG structure
  type: boolean
  inputBinding:
    prefix: --pseudoknots
- id: virtual_residues
  doc: Display the virtual residues as spheres
  type: boolean
  inputBinding:
    prefix: --virtual-residues
- id: color_residues
  doc: Color the residues according to the element they're in
  type: boolean
  inputBinding:
    prefix: --color-residues
- id: loops
  doc: Don't display the coarse-grain hairpin loops
  type: boolean
  inputBinding:
    prefix: --loops
- id: chain
  doc: DWhat chain you like to display.
  type: string
  inputBinding:
    prefix: --chain
- id: distance
  doc: Draw the lines between specified virtual residues
  type: string
  inputBinding:
    prefix: --distance
- id: output
  doc: Create a picture of the scene and exit
  type: string
  inputBinding:
    prefix: --output
- id: only_elements
  doc: Display only these elements element names should be separated by commas
  type: string
  inputBinding:
    prefix: --only-elements
- id: virtual_atoms
  doc: Display the virtual atoms
  type: boolean
  inputBinding:
    prefix: --virtual-atoms
outputs: []
cwlVersion: v1.1
baseCommand:
- visualize_pdb.py
