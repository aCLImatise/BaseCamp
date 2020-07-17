class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/myriad.cwl
inputs:
- id: client
  doc: Run client
  type: boolean
  inputBinding:
    prefix: --client
- id: server_client
  doc: Run server-client demo
  type: boolean
  inputBinding:
    prefix: --serverclient
- id: host
  doc: ''
  type: string
  inputBinding:
    prefix: --host
- id: port
  doc: ''
  type: string
  inputBinding:
    prefix: --port
- id: key
  doc: ''
  type: string
  inputBinding:
    prefix: --key
outputs: []
cwlVersion: v1.1
baseCommand:
- myriad
