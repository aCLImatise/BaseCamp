class: CommandLineTool
id: ../../../overlap.cwl
inputs:
- id: matches_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: matches_two
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
