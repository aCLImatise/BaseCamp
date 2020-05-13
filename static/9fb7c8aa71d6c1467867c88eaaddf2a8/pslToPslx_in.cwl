class: CommandLineTool
id: pslToPslx_in.psl_tSeqSpec.cwl
inputs:
- id: q_seq_spec
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tseq_spec
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_psl_x
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pslToPslx
- in.psl
- tSeqSpec
