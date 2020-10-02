class: CommandLineTool
id: MentaLiST.jl_call_algorithm..cwl
inputs:
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_db
  doc: ''
  type: string
  inputBinding:
    prefix: --db
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_mentalist_dot_jl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_call
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MentaLiST.jl
- call
- algorithm.
