class: CommandLineTool
id: chainToPsl_in.chain_tSizes_qSizes_target.lst_query.lst.cwl
inputs:
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chainToPsl
- in.chain
- tSizes
- qSizes
- target.lst
- query.lst
