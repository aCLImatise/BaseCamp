class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pslToChain.cwl
inputs:
- id: ignore
  doc: ignore psl records with negative target strand rather than exiting
  type: boolean
  inputBinding:
    prefix: -ignore
- id: psl_in
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: chain_out
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslToChain
