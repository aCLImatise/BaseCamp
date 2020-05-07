class: CommandLineTool
id: axtToMaf.cwl
inputs:
- id: in_a_xt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: q_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: score
  doc: '- recalculate score '
  type: boolean
  inputBinding:
    prefix: -score
- id: score_zero
  doc: '- recalculate score if zero '
  type: boolean
  inputBinding:
    prefix: -scoreZero
outputs: []
cwlVersion: v1.1
baseCommand:
- axtToMaf
