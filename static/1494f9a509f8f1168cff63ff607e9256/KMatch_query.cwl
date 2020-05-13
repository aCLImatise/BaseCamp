class: CommandLineTool
id: KMatch_query.fa_max_freq.cwl
inputs:
- id: target_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: min_length
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: jump
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: max_freq
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- KMatch
- query.fa
- max_freq
