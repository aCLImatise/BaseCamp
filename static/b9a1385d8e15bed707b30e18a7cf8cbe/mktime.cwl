class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mktime.cwl
inputs:
- id: yyyy_mm_dd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hh
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mktime
