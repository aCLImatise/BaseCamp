class: CommandLineTool
id: ../../../axtToMaf.cwl
inputs:
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
- id: in_do_tax_t
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
- id: out_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- axtToMaf
