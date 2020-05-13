class: CommandLineTool
id: treebest_ortho.cwl
inputs:
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- ortho
