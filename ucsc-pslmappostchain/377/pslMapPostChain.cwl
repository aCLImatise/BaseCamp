class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pslMapPostChain.cwl
inputs:
- id: post_transmap_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pslMapPostChain
