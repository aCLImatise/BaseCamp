class: CommandLineTool
id: makeBadgerMatrix_input xmfa_LCB coordinate file.cwl
inputs:
- id: output_badger_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: lcb_coordinate_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- makeBadgerMatrix
- input xmfa
- LCB coordinate file
