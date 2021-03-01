class: CommandLineTool
id: prophex_bwt2fa.cwl
inputs:
- id: in_idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_fa
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
- prophex
- bwt2fa
