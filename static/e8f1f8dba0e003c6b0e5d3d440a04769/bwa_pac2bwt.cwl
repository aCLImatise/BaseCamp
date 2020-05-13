class: CommandLineTool
id: bwa_pac2bwt.cwl
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
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- pac2bwt
