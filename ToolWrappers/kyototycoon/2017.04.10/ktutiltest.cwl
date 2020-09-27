class: CommandLineTool
id: ktutiltest.cwl
inputs:
- id: in_u_lim
  doc: ''
  type: long
  inputBinding:
    prefix: -ulim
- id: in_th
  doc: ''
  type: long
  inputBinding:
    prefix: -th
- id: in_tout
  doc: ''
  type: long
  inputBinding:
    prefix: -tout
- id: in_port
  doc: ''
  type: long
  inputBinding:
    prefix: -port
- id: in_host
  doc: ''
  type: string
  inputBinding:
    prefix: -host
- id: in_http
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rpc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ulog
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_proc
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_rnum
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ktutiltest
