class: CommandLineTool
id: treebest_estlen_tag.cwl
inputs:
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: matrix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tag
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- estlen
- tag
