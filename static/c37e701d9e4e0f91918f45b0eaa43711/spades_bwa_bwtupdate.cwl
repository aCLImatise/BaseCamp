class: CommandLineTool
id: spades_bwa_bwtupdate.cwl
inputs:
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bwt_update
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the_dot_bwt
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
- spades-bwa
- bwtupdate
