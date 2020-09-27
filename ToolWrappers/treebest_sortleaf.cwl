class: CommandLineTool
id: treebest_sortleaf.cwl
inputs:
- id: in_tree_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_tree_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- sortleaf
