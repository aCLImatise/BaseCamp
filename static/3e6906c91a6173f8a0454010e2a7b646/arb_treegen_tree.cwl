class: CommandLineTool
id: arb_treegen_tree.cwl
inputs:
- id: cfg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_treegen
- tree
