class: CommandLineTool
id: makeBadgerMatrix_input xmfa_output badger file.cwl
inputs:
- id: lcb_coordinate_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- makeBadgerMatrix
- input xmfa
- output badger file
