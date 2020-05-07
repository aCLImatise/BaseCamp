class: CommandLineTool
id: happer.cwl
inputs:
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- happer
