class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/DASedit.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: x
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
- id: int
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- DASedit
