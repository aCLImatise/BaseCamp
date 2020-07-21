class: CommandLineTool
id: ../../../axtChain.cwl
inputs:
- id: linear_gap
  doc: ''
  type: string
  inputBinding:
    prefix: -linearGap
- id: in_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q_nib_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- axtChain
