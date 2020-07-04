class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/alc.cwl
inputs:
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: file_one
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_two
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- alc
