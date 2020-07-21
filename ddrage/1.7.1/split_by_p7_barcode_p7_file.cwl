class: CommandLineTool
id: ../../../split_by_p7_barcode_p7_file.cwl
inputs:
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: split_by_p_seven_barcode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p_five_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: p_seven_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- split_by_p7_barcode
- p7_file
