class: CommandLineTool
id: seq_seq_pan_subcommand.cwl
inputs:
- id: in_seq_seq_pando_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seq-seq-pan
- subcommand
