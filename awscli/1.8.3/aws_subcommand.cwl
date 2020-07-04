class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/aws_subcommand.cwl
inputs:
- id: aws
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: parameters
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- aws
- subcommand
