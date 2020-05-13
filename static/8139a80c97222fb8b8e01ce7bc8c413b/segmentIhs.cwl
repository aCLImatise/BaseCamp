class: CommandLineTool
id: segmentIhs.cwl
inputs:
- id: segment_fst
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '2'
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
- segmentIhs
