class: CommandLineTool
id: qcat_eval.cwl
inputs:
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_fast_q
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- qcat-eval
