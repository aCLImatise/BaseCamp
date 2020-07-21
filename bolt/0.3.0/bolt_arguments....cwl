class: CommandLineTool
id: ../../../bolt_arguments....cwl
inputs:
- id: bolt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: arguments_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bolt
- arguments...
