class: CommandLineTool
id: prophex_bwtdowngrade_output.bwt.cwl
inputs:
- id: input_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- prophex
- bwtdowngrade
- output.bwt
