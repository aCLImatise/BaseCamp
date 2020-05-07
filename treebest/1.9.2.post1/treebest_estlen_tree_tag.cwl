class: CommandLineTool
id: treebest_estlen_tree_tag.cwl
inputs:
- id: matrix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tag
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- estlen
- tree
- tag
