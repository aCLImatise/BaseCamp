class: CommandLineTool
id: ../../../vendian.cwl
inputs:
- id: bytes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- vendian
