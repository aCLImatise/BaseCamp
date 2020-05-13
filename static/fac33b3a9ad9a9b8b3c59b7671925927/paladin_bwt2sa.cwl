class: CommandLineTool
id: paladin_bwt2sa.cwl
inputs:
- id: '32'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outs_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- bwt2sa
