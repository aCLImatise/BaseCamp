class: CommandLineTool
id: chainNet_in.chain_target.sizes_query.sizes_target.net.cwl
inputs:
- id: query_net
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chainNet
- in.chain
- target.sizes
- query.sizes
- target.net
