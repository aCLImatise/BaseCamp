class: CommandLineTool
id: ../../../htmlCheck.cwl
inputs:
- id: how
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: url
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htmlCheck
