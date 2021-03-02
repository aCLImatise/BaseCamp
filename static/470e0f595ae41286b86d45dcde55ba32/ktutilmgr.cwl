class: CommandLineTool
id: ktutilmgr.cwl
inputs:
- id: in_uf
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -uf
- id: in_uw
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -uw
- id: in_ts
  doc: ''
  type: long?
  inputBinding:
    prefix: -ts
- id: in_oe_nc
  doc: ''
  type: string?
  inputBinding:
    prefix: -oenc
- id: in_i_enc
  doc: ''
  type: string?
  inputBinding:
    prefix: -ienc
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
- id: in_wf
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -wf
- id: in_jl
  doc: ''
  type: long?
  inputBinding:
    prefix: -jl
- id: in_ds
  doc: ''
  type: string?
  inputBinding:
    prefix: -ds
- id: in_conf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_date
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- id: in_proc
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ktutilmgr
