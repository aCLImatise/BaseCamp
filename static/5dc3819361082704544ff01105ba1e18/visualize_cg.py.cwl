class: CommandLineTool
id: visualize_cg.py.cwl
inputs:
- id: in_highlight
  doc: Highlight some elements
  type: string?
  inputBinding:
    prefix: --highlight
- id: in_output
  doc: Create a picture of the scene and exit
  type: string?
  inputBinding:
    prefix: --output
- id: in_long_range
  doc: Display long-range interactions
  type: boolean?
  inputBinding:
    prefix: --longrange
- id: in_loops
  doc: Don't display the coarse-grain hairpin loops
  type: boolean?
  inputBinding:
    prefix: --loops
- id: in_cones
  doc: Display cones that portrude from the stems
  type: boolean?
  inputBinding:
    prefix: --cones
- id: in_text
  doc: Add labels to the figure.
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_align
  doc: Align all of the structures with the first
  type: boolean?
  inputBinding:
    prefix: --align
- id: in_encompassing_stems
  doc: Show the big stems that encompass the colinear ones.
  type: boolean?
  inputBinding:
    prefix: --encompassing-stems
- id: in_virtual_atoms
  doc: Color each of the nucleotide positions (i.e. average
  type: boolean?
  inputBinding:
    prefix: --virtual-atoms
- id: in_distance
  doc: Draw the lines between specified virtual residues
  type: string?
  inputBinding:
    prefix: --distance
- id: in_residue_distance
  doc: Draw a line between residue distances
  type: string?
  inputBinding:
    prefix: --residue-distance
- id: in_basis
  doc: Display the coordinate basis of each element
  type: boolean?
  inputBinding:
    prefix: --basis
- id: in_stem_color
  doc: The default color in coarse-grain drawings
  type: string?
  inputBinding:
    prefix: --stem-color
- id: in_multi_loop_color
  doc: The default color in coarse-grain drawings
  type: string?
  inputBinding:
    prefix: --multiloop-color
- id: in_batch
  doc: Start pymol in batch mode
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_side_chain_atoms
  doc: Include the sidechain atoms. Automatically enables
  type: boolean?
  inputBinding:
    prefix: --sidechain-atoms
- id: in_only_elements
  doc: "Display only these elements element names should be\nseparated by commas"
  type: string?
  inputBinding:
    prefix: --only-elements
- id: in_color_gradual
  doc: "Color the specified elementsgradually from one to the\nother, example (i1,i4,m1)\n"
  type: long?
  inputBinding:
    prefix: --color-gradual
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- visualize_cg.py
