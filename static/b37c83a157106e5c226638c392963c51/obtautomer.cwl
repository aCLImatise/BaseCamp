class: CommandLineTool
id: ../../../obtautomer.cwl
inputs:
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- obtautomer
