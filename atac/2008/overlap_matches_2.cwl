class: CommandLineTool
id: overlap_matches_2.cwl
inputs:
- id: matches_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: matches_2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- overlap
- matches-2
