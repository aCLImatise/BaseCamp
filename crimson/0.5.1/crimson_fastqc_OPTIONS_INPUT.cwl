class: CommandLineTool
id: crimson_fastqc_OPTIONS_INPUT.cwl
inputs:
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crimson
- fastqc
- OPTIONS
- INPUT
