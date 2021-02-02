class: CommandLineTool
id: cent_adjust.cwl
inputs:
- id: in_input_center
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_data_file
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
- cent_adjust
