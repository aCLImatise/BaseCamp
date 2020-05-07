class: CommandLineTool
id: normalize_iHS.cwl
inputs:
- id: normalize_hs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '001'
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: your
  doc: "goes here       -'                "
  type: string
  inputBinding:
    prefix: '-     Your'
outputs: []
cwlVersion: v1.1
baseCommand:
- normalize-iHS
