class: CommandLineTool
id: psass_analyze_OPTIONS_INPUT_FILE.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- psass
- analyze
- OPTIONS
- INPUT_FILE
