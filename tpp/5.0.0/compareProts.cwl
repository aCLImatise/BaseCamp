class: CommandLineTool
id: ../../../compareProts.pl.cwl
inputs:
- id: d_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D3
- id: writes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: comparison
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tab
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: delim
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- compareProts.pl
