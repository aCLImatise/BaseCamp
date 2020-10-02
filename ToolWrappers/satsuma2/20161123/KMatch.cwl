class: CommandLineTool
id: KMatch.cwl
inputs:
- id: in_query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_k
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_min_length
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_jump
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_max_freq
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- KMatch
