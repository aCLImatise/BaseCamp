class: CommandLineTool
id: chainToPsl.cwl
inputs:
- id: in_in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_t_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_q_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_target_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_query_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chainToPsl
