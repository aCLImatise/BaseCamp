class: CommandLineTool
id: ktserver.cwl
inputs:
- id: in_log
  doc: ''
  type: File?
  inputBinding:
    prefix: -log
- id: in_th
  doc: ''
  type: long?
  inputBinding:
    prefix: -th
- id: in_tout
  doc: ''
  type: long?
  inputBinding:
    prefix: -tout
- id: in_port
  doc: ''
  type: long?
  inputBinding:
    prefix: -port
- id: in_host
  doc: ''
  type: string?
  inputBinding:
    prefix: -host
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ktserver
