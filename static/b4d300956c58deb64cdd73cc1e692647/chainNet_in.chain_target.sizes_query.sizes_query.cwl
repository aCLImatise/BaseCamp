class: CommandLineTool
id: chainNet_in.chain_target.sizes_query.sizes_query.net.cwl
inputs:
- id: target_net
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_net
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chainNet
- in.chain
- target.sizes
- query.sizes
- query.net
