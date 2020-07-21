class: CommandLineTool
id: ../../../singlem_query.cwl
inputs:
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: single_m
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- singlem
- query
