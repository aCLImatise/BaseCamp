class: CommandLineTool
id: ../../../atropos.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: se
  doc: ''
  type: string
  inputBinding:
    prefix: -se
outputs: []
cwlVersion: v1.1
baseCommand:
- atropos
