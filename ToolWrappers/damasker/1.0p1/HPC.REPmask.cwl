class: CommandLineTool
id: HPC.REPmask.cwl
inputs:
- id: in_int_cint_readsdbdam
  doc: <int> -c<int> <reads:db|dam> [<block:int>[-<range:int>]
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_vbd
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vbd
- id: in_int
  doc: ''
  type: long?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- HPC.REPmask
