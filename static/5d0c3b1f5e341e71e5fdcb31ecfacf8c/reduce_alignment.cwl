class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/reduce_alignment.cwl
inputs:
- id: start
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: width
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- reduce-alignment
