class: CommandLineTool
id: paladin_pac2bwt_out.bwt.cwl
inputs:
- id: in_pac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- pac2bwt
- out.bwt
