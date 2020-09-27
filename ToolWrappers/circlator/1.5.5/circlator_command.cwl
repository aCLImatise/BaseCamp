class: CommandLineTool
id: circlator_command.cwl
inputs:
- id: in_required_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- circlator
- command
