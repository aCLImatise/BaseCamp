class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/message_extract.cwl
inputs:
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: n_codes
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- message-extract
