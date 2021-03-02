class: CommandLineTool
id: fisher_exact.cwl
inputs:
- id: in_compute
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pr
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pos_succ
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pos
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fisher
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_neg_succ
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_exact
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_test
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_p_value
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fisher_exact
