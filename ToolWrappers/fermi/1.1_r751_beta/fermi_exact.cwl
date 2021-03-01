class: CommandLineTool
id: fermi_exact.cwl
inputs:
- id: in_ms
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Ms
- id: in_idx_based_ot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_src_dot_fa
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
- fermi
- exact
