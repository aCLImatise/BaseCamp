class: CommandLineTool
id: chainToPsl_in.chain_tSizes_qSizes_query.lst.cwl
inputs:
- id: target_lst
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_lst
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- chainToPsl
- in.chain
- tSizes
- qSizes
- query.lst
