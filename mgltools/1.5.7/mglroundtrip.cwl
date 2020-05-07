class: CommandLineTool
id: mglroundtrip.cwl
inputs:
- id: round_trip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_1
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: file_2
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mglroundtrip
