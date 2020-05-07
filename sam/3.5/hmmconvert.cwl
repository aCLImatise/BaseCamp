class: CommandLineTool
id: hmmconvert.cwl
inputs:
- id: run_name
  doc: required
  type: string
  inputBinding:
    position: 0
- id: model_file
  doc: model file
  type: string
  inputBinding:
    prefix: -model_file
- id: binary_output
  doc: <0/1>     target format ASCII/BINARY
  type: boolean
  inputBinding:
    prefix: -binary_output
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmconvert
