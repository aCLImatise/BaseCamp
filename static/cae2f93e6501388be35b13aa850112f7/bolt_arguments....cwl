class: CommandLineTool
id: bolt_arguments....cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- arguments...
