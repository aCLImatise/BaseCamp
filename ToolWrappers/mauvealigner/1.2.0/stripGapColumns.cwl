class: CommandLineTool
id: stripGapColumns.cwl
inputs:
- id: in_input_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_x_mfa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stripGapColumns
