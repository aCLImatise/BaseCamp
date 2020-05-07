class: CommandLineTool
id: convert_zero_one_based_INPUT_FILE.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_zero_one_based
- INPUT_FILE
