class: CommandLineTool
id: cent_adjust_input_center.cwl
inputs:
- id: input_data_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cent_adjust
- input_center
