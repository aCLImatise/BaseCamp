class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/subindel.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- subindel
