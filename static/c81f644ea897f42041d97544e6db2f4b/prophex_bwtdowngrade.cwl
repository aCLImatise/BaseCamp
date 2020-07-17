class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophex_bwtdowngrade.cwl
inputs:
- id: input_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- prophex
- bwtdowngrade
