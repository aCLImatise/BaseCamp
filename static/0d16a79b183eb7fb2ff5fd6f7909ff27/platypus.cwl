class: CommandLineTool
id: ../../../platypus.cwl
inputs:
- id: as
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: follows
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- platypus
