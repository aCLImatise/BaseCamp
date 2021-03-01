class: CommandLineTool
id: prophex_bwtdowngrade.cwl
inputs:
- id: in_input_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_bwt
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
- bwtdowngrade
