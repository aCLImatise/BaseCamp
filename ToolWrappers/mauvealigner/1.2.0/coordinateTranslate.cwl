class: CommandLineTool
id: coordinateTranslate.cwl
inputs:
- id: in_x_mfa_alignment
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignment_coordinate_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- coordinateTranslate
