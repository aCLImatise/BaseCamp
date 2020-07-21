class: CommandLineTool
id: ../../../DBsplit.cwl
inputs:
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
- id: int
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- DBsplit
