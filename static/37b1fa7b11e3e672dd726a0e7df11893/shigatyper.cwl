class: CommandLineTool
id: shigatyper.cwl
inputs:
- id: read_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_2
  doc: ''
  type: string
  inputBinding:
    position: 1
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
outputs: []
cwlVersion: v1.1
baseCommand:
- shigatyper
