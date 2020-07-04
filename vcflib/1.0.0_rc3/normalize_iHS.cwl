class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/normalize_iHS.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: normalize_hs
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- normalize-iHS
