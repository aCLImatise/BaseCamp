class: CommandLineTool
id: ../../../makeBadgerMatrix.cwl
inputs:
- id: input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_badger_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: lcb_coordinate_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- makeBadgerMatrix
