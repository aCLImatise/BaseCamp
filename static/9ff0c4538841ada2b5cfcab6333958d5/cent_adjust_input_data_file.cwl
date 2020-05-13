class: CommandLineTool
id: cent_adjust_input_data_file.cwl
inputs:
- id: input_center
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_data_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cent_adjust
- input_data_file
