class: CommandLineTool
id: convert_zero_one_based_OPTIONS_OUTPUT_FILE.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_zero_one_based
- OPTIONS
- OUTPUT_FILE
