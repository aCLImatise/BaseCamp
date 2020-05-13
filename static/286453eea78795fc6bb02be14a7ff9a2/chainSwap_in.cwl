class: CommandLineTool
id: chainSwap_in.chain.cwl
inputs:
- id: out_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chainSwap
- in.chain
