class: CommandLineTool
id: ../../../bedtools_summary.cwl
inputs:
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_chr_one
  doc: '249250621'
  type: long
  inputBinding:
    position: 0
- id: in_chr_two
  doc: '243199373'
  type: long
  inputBinding:
    position: 1
- id: in_chr_one_eight_gl_zero_zero_zero_two_zero_seven_random
  doc: '4262'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- summary
