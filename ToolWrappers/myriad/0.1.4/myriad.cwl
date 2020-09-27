class: CommandLineTool
id: myriad.cwl
inputs:
- id: in_key
  doc: ''
  type: string
  inputBinding:
    prefix: --key
- id: in_port
  doc: ''
  type: string
  inputBinding:
    prefix: --port
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
- myriad
