class: CommandLineTool
id: seq_seq_pan_consensus.cwl
inputs:
- id: in_input_do_tx_mfa
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
- seq-seq-pan-consensus
