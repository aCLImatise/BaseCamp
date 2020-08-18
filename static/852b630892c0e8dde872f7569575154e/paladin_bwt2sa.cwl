class: CommandLineTool
id: ../../../paladin_bwt2sa.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dots_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- bwt2sa
