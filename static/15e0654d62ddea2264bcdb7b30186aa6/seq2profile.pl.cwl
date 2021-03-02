class: CommandLineTool
id: seq2profile.pl.cwl
inputs:
- id: in_consensus_sequence
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
- seq2profile.pl
