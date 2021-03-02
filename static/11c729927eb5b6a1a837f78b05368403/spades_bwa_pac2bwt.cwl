class: CommandLineTool
id: spades_bwa_pac2bwt.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pac_two_bwt
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_in_dot_pac
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- pac2bwt
