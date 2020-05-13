class: CommandLineTool
id: KMatch_query.fa_target.fa_output.fa.cwl
inputs:
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: min_length
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: jump
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: max_freq
  doc: ''
  type: long
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- KMatch
- query.fa
- target.fa
- output.fa
