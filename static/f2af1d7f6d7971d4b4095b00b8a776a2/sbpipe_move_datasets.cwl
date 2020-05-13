class: CommandLineTool
id: sbpipe_move_datasets.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- sbpipe_move_datasets
