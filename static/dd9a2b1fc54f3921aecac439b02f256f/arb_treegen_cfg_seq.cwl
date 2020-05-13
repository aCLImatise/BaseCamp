class: CommandLineTool
id: arb_treegen_cfg_seq.cwl
inputs:
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_treegen
- cfg
- seq
