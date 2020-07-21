class: CommandLineTool
id: ../../../merauder_OPTION....cwl
inputs:
- id: max
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: insert
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: size
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: is
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: required
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- merauder
- OPTION...
