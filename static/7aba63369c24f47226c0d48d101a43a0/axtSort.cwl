class: CommandLineTool
id: axtSort.cwl
inputs:
- id: in_a_xt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_a_xt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query
  doc: query position, not target
  type: string
  inputBinding:
    prefix: -query
- id: by_score
  doc: score
  type: string
  inputBinding:
    prefix: -byScore
outputs: []
cwlVersion: v1.1
baseCommand:
- axtSort
