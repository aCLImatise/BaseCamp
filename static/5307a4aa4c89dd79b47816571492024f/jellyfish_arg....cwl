class: CommandLineTool
id: ../../../jellyfish_arg....cwl
inputs:
- id: jellyfish
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cmd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arg_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- jellyfish
- arg...
