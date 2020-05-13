class: CommandLineTool
id: pslToPslx_in.psl_qSeqSpec_out.pslx.cwl
inputs:
- id: tseq_spec
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_psl_x
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslToPslx
- in.psl
- qSeqSpec
- out.pslx
