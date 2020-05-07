class: CommandLineTool
id: convertPolishes_input_file .cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- convertPolishes
- 'input_file '
