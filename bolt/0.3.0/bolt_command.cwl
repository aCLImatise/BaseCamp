class: CommandLineTool
id: ../../../bolt_command.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- command
