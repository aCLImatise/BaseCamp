class: CommandLineTool
id: axtChain.cwl
inputs:
- id: in_a_xt
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
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: linear_gap
  doc: ''
  type: string
  inputBinding:
    prefix: -linearGap
outputs: []
cwlVersion: v1.1
baseCommand:
- axtChain
