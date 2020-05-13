class: CommandLineTool
id: chainNet_in.chain_query.net.cwl
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
- id: target_net
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_net
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chainNet
- in.chain
- query.net
