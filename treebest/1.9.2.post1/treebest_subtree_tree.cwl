class: CommandLineTool
id: treebest_subtree_tree.cwl
inputs:
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- subtree
- tree
