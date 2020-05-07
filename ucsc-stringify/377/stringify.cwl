class: CommandLineTool
id: stringify.cwl
inputs:
- id: in_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: create
  doc: variable but put static in front of it.
  type: string
  inputBinding:
    prefix: '- create'
- id: create
  doc: array of strings, one for each line
  type: string
  inputBinding:
    prefix: '- create'
outputs: []
cwlVersion: v1.1
baseCommand:
- stringify
