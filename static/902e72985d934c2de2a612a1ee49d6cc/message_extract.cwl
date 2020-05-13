class: CommandLineTool
id: message_extract.cwl
inputs:
- id: n_codes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- message-extract
