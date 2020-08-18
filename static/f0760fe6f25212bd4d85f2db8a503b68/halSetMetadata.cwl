class: CommandLineTool
id: ../../../halSetMetadata.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: key
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: value
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- halSetMetadata
