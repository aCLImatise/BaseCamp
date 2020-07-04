class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mcx.cwl
inputs:
- id: mode
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mcx
