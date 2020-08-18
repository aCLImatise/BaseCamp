class: CommandLineTool
id: ../../../hmmconvert.cwl
inputs:
- id: model_file
  doc: model file
  type: string
  inputBinding:
    prefix: -model_file
- id: binary_output
  doc: target format ASCII/BINARY
  type: string
  inputBinding:
    prefix: -binary_output
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: required
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmconvert
