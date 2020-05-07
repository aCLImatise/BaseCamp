class: CommandLineTool
id: visualize_cg.py.cwl
inputs:
- id: highlight
  doc: Highlight some elements
  type: string
  inputBinding:
    prefix: --highlight
- id: output
  doc: Create a picture of the scene and exit
  type: string
  inputBinding:
    prefix: --output
- id: long_range
  doc: Display long-range interactions
  type: boolean
  inputBinding:
    prefix: --longrange
- id: loops
  doc: Don't display the coarse-grain hairpin loops
  type: boolean
  inputBinding:
    prefix: --loops
- id: cones
  doc: Display cones that portrude from the stems
  type: boolean
  inputBinding:
    prefix: --cones
- id: text
  doc: Add labels to the figure.
  type: boolean
  inputBinding:
    prefix: --text
- id: align
  doc: Align all of the structures with the first
  type: boolean
  inputBinding:
    prefix: --align
- id: encompassing_stems
  doc: Show the big stems that encompass the colinear ones.
  type: boolean
  inputBinding:
    prefix: --encompassing-stems
- id: virtual_atoms
  doc: Display the virtual atoms
  type: boolean
  inputBinding:
    prefix: --virtual-atoms
- id: distance
  doc: Draw the lines between specified virtual residues
  type: string
  inputBinding:
    prefix: --distance
- id: residue_distance
  doc: Draw a line between residue distances
  type: string
  inputBinding:
    prefix: --residue-distance
- id: basis
  doc: Display the coordinate basis of each element
  type: boolean
  inputBinding:
    prefix: --basis
- id: stem_color
  doc: The default color in coarse-grain drawings
  type: string
  inputBinding:
    prefix: --stem-color
- id: multi_loop_color
  doc: The default color in coarse-grain drawings
  type: string
  inputBinding:
    prefix: --multiloop-color
- id: batch
  doc: Start pymol in batch mode
  type: boolean
  inputBinding:
    prefix: --batch
- id: side_chain_atoms
  doc: Include the sidechain atoms. Automatically enables --virtual-atoms
  type: boolean
  inputBinding:
    prefix: --sidechain-atoms
- id: rainbow
  doc: Color each of the nucleotide positions (i.e. average atoms) according to the
    colors of the rainbow and their position
  type: boolean
  inputBinding:
    prefix: --rainbow
- id: only_elements
  doc: Display only these elements element names should be separated by commas
  type: string
  inputBinding:
    prefix: --only-elements
- id: color_gradual
  doc: Color the specified elementsgradually from one to the other, example (i1,i4,m1)
  type: string
  inputBinding:
    prefix: --color-gradual
outputs: []
cwlVersion: v1.1
baseCommand:
- visualize_cg.py
