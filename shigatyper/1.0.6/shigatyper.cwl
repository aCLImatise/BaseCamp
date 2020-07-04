class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/shigatyper.cwl
inputs:
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: read_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- shigatyper
