class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/convert_orthofinder_tree_ids.py_SpeciesIDs.cwl
inputs:
- id: convert_ortho_finder_tree_ids_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sequence_ids
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: species_ids
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_orthofinder_tree_ids.py
- SpeciesIDs
