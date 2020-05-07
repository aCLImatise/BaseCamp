class: CommandLineTool
id: chainPreNet_in.chain_query.sizes.cwl
inputs:
- id: target_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- chainPreNet
- in.chain
- query.sizes
