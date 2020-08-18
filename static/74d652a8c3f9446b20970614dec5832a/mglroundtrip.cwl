class: CommandLineTool
id: ../../../mglroundtrip.cwl
inputs:
- id: round_trip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_one
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: file_two
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mglroundtrip
