class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_seq_stats.py.cwl
inputs:
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: summarize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: lengths
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: fast_a_slash_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- get_seq_stats.py
