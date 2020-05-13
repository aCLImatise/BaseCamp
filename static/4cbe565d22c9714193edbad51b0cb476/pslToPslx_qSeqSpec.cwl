class: CommandLineTool
id: pslToPslx_qSeqSpec.cwl
inputs:
- id: in_psl
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
- id: out_psl_x
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- pslToPslx
- qSeqSpec
