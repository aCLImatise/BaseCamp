class: CommandLineTool
id: aws_command_parameters.cwl
inputs:
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- aws
- command
- parameters
