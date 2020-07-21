class: CommandLineTool
id: ../../../psass_analyze_OUTPUT_FILE.cwl
inputs:
- id: ps_ass
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: analyze
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- psass
- analyze
- OUTPUT_FILE
