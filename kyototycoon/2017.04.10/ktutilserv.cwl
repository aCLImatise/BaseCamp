class: CommandLineTool
id: ../../../ktutilserv.cwl
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
- id: echo
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ktutilserv
