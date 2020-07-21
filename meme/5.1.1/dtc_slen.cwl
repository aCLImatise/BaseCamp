class: CommandLineTool
id: ../../../dtc_slen.cwl
inputs:
- id: dtc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: min_w
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: max_w
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: slen
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: minn
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: max_n
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- dtc
- slen
