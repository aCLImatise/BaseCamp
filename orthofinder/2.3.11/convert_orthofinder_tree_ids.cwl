class: CommandLineTool
id: convert_orthofinder_tree_ids.py.cwl
inputs:
- id: tree_input
  doc: Tree filename or directory
  type: string
  inputBinding:
    position: 0
- id: sequence_ids
  doc: Found in Results_<Date>/WorkingDirectory
  type: string
  inputBinding:
    position: 1
- id: species_ids
  doc: Found in Results_<Date>/WorkingDirectory
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_orthofinder_tree_ids.py
