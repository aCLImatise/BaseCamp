class: CommandLineTool
id: wes_client.cwl
inputs:
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_proto
  doc: ''
  type: string
  inputBinding:
    prefix: --proto
- id: in_auth
  doc: ''
  type: string
  inputBinding:
    prefix: --auth
- id: in_host
  doc: ''
  type: string
  inputBinding:
    prefix: --host
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wes-client
