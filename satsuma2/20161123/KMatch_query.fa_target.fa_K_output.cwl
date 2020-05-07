class: CommandLineTool
id: KMatch_query.fa_target.fa_K_output.fa_max_freq.cwl
inputs:
- id: min_length
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: jump
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: max_freq
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- KMatch
- query.fa
- target.fa
- K
- output.fa
- max_freq
