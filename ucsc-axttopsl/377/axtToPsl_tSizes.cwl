class: CommandLineTool
id: axtToPsl_tSizes.cwl
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
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- axtToPsl
- tSizes
