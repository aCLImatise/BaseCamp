class: CommandLineTool
id: crimson_vep_OPTIONS_INPUT.cwl
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
- vep
- OPTIONS
- INPUT
