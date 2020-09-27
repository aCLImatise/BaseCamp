class: CommandLineTool
id: bwa_bwtupdate.cwl
inputs:
- id: in_the_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bwa
- bwtupdate
