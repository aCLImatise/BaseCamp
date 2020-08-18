class: CommandLineTool
id: ../../../cactus_makeAlphaNumericHeaders.py.cwl
inputs:
- id: fast_a_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cactus_makeAlphaNumericHeaders.py
