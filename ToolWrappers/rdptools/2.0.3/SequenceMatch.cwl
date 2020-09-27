class: CommandLineTool
id: SequenceMatch.cwl
inputs:
- id: in_seq_match_main
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_train_vertical_line_seq_match
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SequenceMatch
