class: CommandLineTool
id: obtautomer.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- obtautomer
