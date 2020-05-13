class: CommandLineTool
id: netChainSubset_in.net_in.chain.cwl
inputs:
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- netChainSubset
- in.net
- in.chain
