class: CommandLineTool
id: prophex_bwtdowngrade_input.bwt.cwl
inputs:
- id: output_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- prophex
- bwtdowngrade
- input.bwt
