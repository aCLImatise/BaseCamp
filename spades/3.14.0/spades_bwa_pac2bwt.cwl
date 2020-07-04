class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/spades_bwa_pac2bwt.cwl
inputs:
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pac_two_bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_pac
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- pac2bwt
