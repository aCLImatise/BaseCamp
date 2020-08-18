class: CommandLineTool
id: ../../../runMetaphyler.pl.cwl
inputs:
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: blast
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- runMetaphyler.pl
