class: CommandLineTool
id: chainPreNet_in.chain_target.sizes_out.chain.cwl
inputs:
- id: query_sizes
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
- chainPreNet
- in.chain
- target.sizes
- out.chain
