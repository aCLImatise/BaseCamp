class: CommandLineTool
id: ../../../myriad.cwl
inputs:
- id: in_host
  doc: ''
  type: string
  inputBinding:
    prefix: --host
- id: in_port
  doc: ''
  type: string
  inputBinding:
    prefix: --port
- id: in_key
  doc: ''
  type: string
  inputBinding:
    prefix: --key
- id: in_max_items
  doc: ''
  type: long
  inputBinding:
    prefix: --max_items
- id: in_client
  doc: Run client
  type: boolean
  inputBinding:
    prefix: --client
- id: in_server_client
  doc: Run server-client demo
  type: boolean
  inputBinding:
    prefix: --serverclient
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- myriad
