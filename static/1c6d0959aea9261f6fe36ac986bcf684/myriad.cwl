class: CommandLineTool
id: myriad.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- myriad
