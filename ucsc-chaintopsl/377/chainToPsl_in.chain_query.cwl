class: CommandLineTool
id: chainToPsl_in.chain_query.lst.cwl
inputs:
- id: t_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: q_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: target_lst
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_lst
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- chainToPsl
- in.chain
- query.lst
