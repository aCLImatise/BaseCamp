class: CommandLineTool
id: chainToPsl_target.lst.cwl
inputs:
- id: in_chain
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
- id: target_lst
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: query_lst
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- chainToPsl
- target.lst
