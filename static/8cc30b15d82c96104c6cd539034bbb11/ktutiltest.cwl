class: CommandLineTool
id: ../../../ktutiltest.cwl
inputs:
- id: th
  doc: ''
  type: string
  inputBinding:
    prefix: -th
- id: http
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ktutiltest
