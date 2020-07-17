class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bwa_pac2bwt.cwl
inputs:
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
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
- bwa
- pac2bwt
