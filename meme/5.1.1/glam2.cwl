class: CommandLineTool
id: ../../../glam2.cwl
inputs:
- id: alphabet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: my_seqs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- glam2
