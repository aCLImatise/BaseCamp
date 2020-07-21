class: CommandLineTool
id: ../../../SequenceMatch.cwl
inputs:
- id: seq_match_main
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: train_vertical_line_seq_match
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- SequenceMatch
