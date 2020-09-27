class: CommandLineTool
id: arb_consensus_tree.cwl
inputs:
- id: in_write_consensus_tree
  doc: write consensus tree to outfile
  type: string
  inputBinding:
    prefix: -w
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arb_consensus_tree
