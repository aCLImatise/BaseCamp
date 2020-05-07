class: CommandLineTool
id: chainNet_query.net.cwl
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
- id: target_net
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: query_net
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- chainNet
- query.net
