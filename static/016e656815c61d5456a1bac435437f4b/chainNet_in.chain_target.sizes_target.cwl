class: CommandLineTool
id: chainNet_in.chain_target.sizes_target.net.cwl
inputs:
- id: query_sizes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_net
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_net
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- chainNet
- in.chain
- target.sizes
- target.net
