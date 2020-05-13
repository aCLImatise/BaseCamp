class: CommandLineTool
id: paladin_pac2bwt_in.pac.cwl
inputs:
- id: out_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- pac2bwt
- in.pac
