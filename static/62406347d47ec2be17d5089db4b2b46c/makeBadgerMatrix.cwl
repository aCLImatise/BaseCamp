class: CommandLineTool
id: makeBadgerMatrix.cwl
inputs:
- id: in_input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_badger_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_lcb_coordinate_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_badger_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_badger_file)
hints: []
cwlVersion: v1.1
baseCommand:
- makeBadgerMatrix
