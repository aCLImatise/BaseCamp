class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/psass_analyze_INPUT_FILE.cwl
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
- INPUT_FILE
