class: CommandLineTool
id: terminus_help_information.cwl
inputs:
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: more
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: try
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- terminus
- help
- information
