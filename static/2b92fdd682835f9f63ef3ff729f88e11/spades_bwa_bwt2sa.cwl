class: CommandLineTool
id: spades_bwa_bwt2sa.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bwt2sa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: '32'
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_bwt
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: outs_a
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- bwt2sa
