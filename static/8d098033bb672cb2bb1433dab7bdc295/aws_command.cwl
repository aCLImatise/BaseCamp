class: CommandLineTool
id: aws_command.cwl
inputs:
- id: in_subcommand
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_parameters
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- aws
- command
