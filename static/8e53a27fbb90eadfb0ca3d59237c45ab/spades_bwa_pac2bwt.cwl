class: CommandLineTool
id: spades_bwa_pac2bwt.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pac2bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_pac
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_bwt
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- pac2bwt
