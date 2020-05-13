class: CommandLineTool
id: chainPreNet_in.chain_target.sizes_query.sizes.cwl
inputs:
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chainPreNet
- in.chain
- target.sizes
- query.sizes
