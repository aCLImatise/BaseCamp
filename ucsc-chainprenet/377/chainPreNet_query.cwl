class: CommandLineTool
id: chainPreNet_query.sizes.cwl
inputs:
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chainPreNet
- query.sizes
