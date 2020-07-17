class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/combine.cwl
inputs:
- id: file_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: op
  doc: ''
  type: string
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
- combine
