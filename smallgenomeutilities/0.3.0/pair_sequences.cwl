class: CommandLineTool
id: pair_sequences.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pair_sequences
