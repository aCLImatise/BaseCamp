class: CommandLineTool
id: ../../../bft.cwl
inputs:
- id: build
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bft
