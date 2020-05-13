class: CommandLineTool
id: netChainSubset_in.chain.cwl
inputs:
- id: in_net
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chain
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
- netChainSubset
- in.chain
