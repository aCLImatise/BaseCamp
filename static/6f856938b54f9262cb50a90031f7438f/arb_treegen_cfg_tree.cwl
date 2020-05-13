class: CommandLineTool
id: arb_treegen_cfg_tree.cwl
inputs:
- id: seq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_treegen
- cfg
- tree
