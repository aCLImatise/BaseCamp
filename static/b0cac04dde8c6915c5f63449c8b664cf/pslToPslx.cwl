class: CommandLineTool
id: pslToPslx.cwl
inputs:
- id: in_masked
  doc: "- if specified, repeats are in lower case cases, otherwise entire\nsequence\
    \ is loader case.\n"
  type: boolean?
  inputBinding:
    prefix: -masked
- id: in_in_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_q_seq_spec
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tseq_spec
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pslToPslx
