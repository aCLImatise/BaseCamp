class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/synchain_mugsy.cwl
inputs:
- id: mugsy_chaining
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: max_distance
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: min_lcb_span
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: min_stats_len
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- synchain-mugsy
