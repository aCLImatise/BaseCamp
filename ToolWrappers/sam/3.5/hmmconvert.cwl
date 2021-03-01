class: CommandLineTool
id: hmmconvert.cwl
inputs:
- id: in_model_file
  doc: model file
  type: File?
  inputBinding:
    prefix: -model_file
- id: in_binary_output
  doc: target format ASCII/BINARY
  type: long?
  inputBinding:
    prefix: -binary_output
- id: in_option
  doc: ''
  type: string?
  inputBinding:
    prefix: -option
- id: in_run_name
  doc: required
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmconvert
