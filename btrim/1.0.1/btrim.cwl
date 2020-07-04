class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/btrim.cwl
inputs:
- id: u
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: unit_ig
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- btrim
