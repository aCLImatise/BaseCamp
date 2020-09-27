class: CommandLineTool
id: get_seq_stats.py.cwl
inputs:
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_summarize
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_lengths
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_fast_a_slash_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_seq_stats.py
