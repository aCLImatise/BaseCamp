class: CommandLineTool
id: ../../../sdust.cwl
inputs:
- id: w
  doc: ''
  type: string
  inputBinding:
    prefix: -w
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sdust
