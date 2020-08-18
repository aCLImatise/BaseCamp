class: CommandLineTool
id: ../../../arb_consensus_tree.cwl
inputs:
- id: write_consensus_tree
  doc: write consensus tree to outfile
  type: string
  inputBinding:
    prefix: -w
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_consensus_tree
