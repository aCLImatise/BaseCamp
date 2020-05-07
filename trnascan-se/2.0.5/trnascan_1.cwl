class: CommandLineTool
id: trnascan_1.4.cwl
inputs:
- id: trnascan
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- trnascan-1.4
