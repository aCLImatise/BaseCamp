class: CommandLineTool
id: ../../../chromatiblock.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: zero_dot_four_dot_two
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chromatiblock
