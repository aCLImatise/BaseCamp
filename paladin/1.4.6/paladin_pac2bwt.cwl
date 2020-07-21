class: CommandLineTool
id: ../../../paladin_pac2bwt.cwl
inputs:
- id: in_dot_pac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- pac2bwt
