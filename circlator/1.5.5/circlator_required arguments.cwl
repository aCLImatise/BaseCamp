class: CommandLineTool
id: ../../../circlator_required arguments.cwl
inputs:
- id: circ_lator
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: required_arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- circlator
- required arguments
