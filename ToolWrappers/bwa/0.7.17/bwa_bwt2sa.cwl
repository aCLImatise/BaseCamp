class: CommandLineTool
id: bwa_bwt2sa.cwl
inputs:
- id: in_i
  doc: ''
  type: long?
  inputBinding:
    prefix: -i
- id: in_in_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dots_a
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
- bwa
- bwt2sa
