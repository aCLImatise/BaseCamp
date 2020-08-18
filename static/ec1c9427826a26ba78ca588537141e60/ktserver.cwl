class: CommandLineTool
id: ../../../ktserver.cwl
inputs:
- id: host
  doc: ''
  type: string
  inputBinding:
    prefix: -host
- id: port
  doc: ''
  type: string
  inputBinding:
    prefix: -port
- id: tout
  doc: ''
  type: string
  inputBinding:
    prefix: -tout
- id: th
  doc: ''
  type: string
  inputBinding:
    prefix: -th
- id: log
  doc: ''
  type: File
  inputBinding:
    prefix: -log
outputs: []
cwlVersion: v1.1
baseCommand:
- ktserver
