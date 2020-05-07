class: CommandLineTool
id: bolt_help.cwl
inputs:
- id: genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: help
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- help
