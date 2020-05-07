class: CommandLineTool
id: aws_parameters.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- aws
- parameters
