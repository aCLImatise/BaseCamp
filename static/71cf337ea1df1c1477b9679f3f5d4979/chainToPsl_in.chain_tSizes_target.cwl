class: CommandLineTool
id: chainToPsl_in.chain_tSizes_target.lst.cwl
inputs:
- id: q_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_lst
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_lst
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
- chainToPsl
- in.chain
- tSizes
- target.lst
