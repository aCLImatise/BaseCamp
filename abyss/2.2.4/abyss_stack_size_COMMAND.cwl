class: CommandLineTool
id: abyss_stack_size_COMMAND.cwl
inputs:
- id: stack_size
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-stack-size
- COMMAND
