class: CommandLineTool
id: ../../../dashing.cwl
inputs:
- id: subcommand
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dashing
