class: CommandLineTool
id: split_by_p7_barcode_p7_file.cwl
inputs:
- id: in_f
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_split_by_p_seven_barcode
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_p_five_file
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_p_seven_file
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- split_by_p7_barcode
- p7_file
