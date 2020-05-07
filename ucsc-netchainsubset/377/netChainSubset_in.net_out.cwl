class: CommandLineTool
id: netChainSubset_in.net_out.chain.cwl
inputs:
- id: in_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- netChainSubset
- in.net
- out.chain
