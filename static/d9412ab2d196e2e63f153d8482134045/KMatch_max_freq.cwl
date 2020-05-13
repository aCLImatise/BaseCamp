class: CommandLineTool
id: KMatch_max_freq.cwl
inputs:
- id: query_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: k
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_fa
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: min_length
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: jump
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: max_freq
  doc: ''
  type: long
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- KMatch
- max_freq
