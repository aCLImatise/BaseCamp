class: CommandLineTool
id: arb_consensus_tree.cwl
inputs:
- id: w
  doc: write consensus tree to outfile
  type: string
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_consensus_tree
