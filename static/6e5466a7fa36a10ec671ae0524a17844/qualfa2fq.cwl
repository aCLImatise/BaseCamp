class: CommandLineTool
id: ../../../qualfa2fq.pl.cwl
inputs:
- id: in_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_qual
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qualfa2fq.pl
