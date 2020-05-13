class: CommandLineTool
id: chainToPslBasic.cwl
inputs:
- id: chain_top_sl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_chain
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
- chainToPslBasic
