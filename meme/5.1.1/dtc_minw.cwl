class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dtc_minw.cwl
inputs:
- id: max_w
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: slen
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: minn
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: max_n
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- dtc
- minw
