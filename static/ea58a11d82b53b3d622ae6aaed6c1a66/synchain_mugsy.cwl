class: CommandLineTool
id: synchain_mugsy.cwl
inputs:
- id: in_mugsy_chaining
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_max_distance
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_min_lcb_span
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_min_stats_len
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synchain-mugsy
