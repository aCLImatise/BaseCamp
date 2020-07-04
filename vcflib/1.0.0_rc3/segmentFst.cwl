class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/segmentFst.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentFst
