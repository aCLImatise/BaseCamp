class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/axtSort.cwl
inputs:
- id: query
  doc: '- Sort by query position, not target'
  type: boolean
  inputBinding:
    prefix: -query
- id: by_score
  doc: '- Sort by score'
  type: boolean
  inputBinding:
    prefix: -byScore
- id: in_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- axtSort
