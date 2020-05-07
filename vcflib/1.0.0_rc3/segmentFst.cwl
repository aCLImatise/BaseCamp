class: CommandLineTool
id: segmentFst.cwl
inputs:
- id: '07'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: your
  doc: "goes here       -'                "
  type: string
  inputBinding:
    prefix: '-     Your'
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentFst
