class: CommandLineTool
id: treebest_leaf.cwl
inputs:
- id: nh_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- leaf
