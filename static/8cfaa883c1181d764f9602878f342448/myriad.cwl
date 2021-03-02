class: CommandLineTool
id: myriad.cwl
inputs:
- id: in_max_items
  doc: Run client
  type: string?
  inputBinding:
    prefix: --max_items
- id: in_server_client
  doc: Run server-client demo
  type: boolean?
  inputBinding:
    prefix: --serverclient
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- myriad
