class: CommandLineTool
id: ktremotetest.cwl
inputs:
- id: in_iv
  doc: ''
  type: long?
  inputBinding:
    prefix: -iv
- id: in_xt
  doc: ''
  type: long?
  inputBinding:
    prefix: -xt
- id: in_vs
  doc: ''
  type: long?
  inputBinding:
    prefix: -vs
- id: in_kp
  doc: ''
  type: long?
  inputBinding:
    prefix: -kp
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
- id: in_th
  doc: ''
  type: long?
  inputBinding:
    prefix: -th
- id: in_it
  doc: ''
  type: long?
  inputBinding:
    prefix: -it
- id: in_rnd
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -rnd
- id: in_bin
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -bin
- id: in_bulk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_order
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_usual
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_wicked
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ktremotetest
