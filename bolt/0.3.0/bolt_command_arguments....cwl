class: CommandLineTool
id: bolt_command_arguments....cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- command
- arguments...
