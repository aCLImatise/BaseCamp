class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/meme.cwl
inputs:
- id: dataset
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: optional
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- meme
