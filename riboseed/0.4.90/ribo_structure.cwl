class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ribo_structure.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: k
  doc: ''
  type: string
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- structure
