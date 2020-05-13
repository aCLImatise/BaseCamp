class: CommandLineTool
id: circlator_command.cwl
inputs:
- id: required_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- circlator
- command
