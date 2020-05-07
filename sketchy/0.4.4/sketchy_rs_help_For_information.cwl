class: CommandLineTool
id: sketchy_rs_help_For_information.cwl
inputs:
- id: more
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: try
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy-rs
- help
- For
- information
