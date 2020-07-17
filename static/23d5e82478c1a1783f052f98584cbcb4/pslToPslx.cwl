class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pslToPslx.cwl
inputs:
- id: masked
  doc: '- if specified, repeats are in lower case cases, otherwise entire sequence
    is loader case.'
  type: boolean
  inputBinding:
    prefix: -masked
- id: in_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: q_seq_spec
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tseq_spec
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_dot_psl_x
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- pslToPslx
