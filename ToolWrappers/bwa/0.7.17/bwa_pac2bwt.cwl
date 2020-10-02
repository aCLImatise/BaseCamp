class: CommandLineTool
id: bwa_pac2bwt.cwl
inputs:
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_in_dot_pac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bwa
- pac2bwt
