class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/purge.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: score
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- purge
