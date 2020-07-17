class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sfold.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: seq_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sfold
