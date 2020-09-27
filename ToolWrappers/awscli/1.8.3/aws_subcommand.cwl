class: CommandLineTool
id: aws_subcommand.cwl
inputs:
- id: in_aws
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_parameters
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- aws
- subcommand
