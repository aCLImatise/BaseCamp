class: CommandLineTool
id: ../../../wes_client.cwl
inputs:
- id: host
  doc: ''
  type: string
  inputBinding:
    prefix: --host
- id: auth
  doc: ''
  type: string
  inputBinding:
    prefix: --auth
- id: proto
  doc: ''
  type: string
  inputBinding:
    prefix: --proto
- id: quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- wes-client
