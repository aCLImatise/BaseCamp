class: CommandLineTool
id: aws_command_subcommand.cwl
inputs:
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- aws
- command
- subcommand
