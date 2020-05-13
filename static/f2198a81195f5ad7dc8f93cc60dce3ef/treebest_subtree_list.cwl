class: CommandLineTool
id: treebest_subtree_list.cwl
inputs:
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- subtree
- list
