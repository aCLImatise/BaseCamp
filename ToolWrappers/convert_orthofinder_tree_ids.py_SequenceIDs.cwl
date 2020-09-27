class: CommandLineTool
id: convert_orthofinder_tree_ids.py_SequenceIDs.cwl
inputs:
- id: in_convert_ortho_finder_tree_ids_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tree_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_sequence_ids
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_species_ids
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_orthofinder_tree_ids.py
- SequenceIDs
