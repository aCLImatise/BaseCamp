class: CommandLineTool
id: bfmtx2m4.pl.cwl
inputs:
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_four_dot_pre
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_all_norm_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bfmtx2m4.pl
