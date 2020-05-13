class: CommandLineTool
id: chainToPsl_in.chain_tSizes_qSizes_target.lst_out.psl.cwl
inputs:
- id: query_lst
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chainToPsl
- in.chain
- tSizes
- qSizes
- target.lst
- out.psl
