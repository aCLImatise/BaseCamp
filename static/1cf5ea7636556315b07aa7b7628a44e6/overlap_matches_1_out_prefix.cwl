class: CommandLineTool
id: overlap_matches_1_out_prefix.cwl
inputs:
- id: matches_2
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- overlap
- matches-1
- out-prefix
