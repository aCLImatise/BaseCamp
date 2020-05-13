class: CommandLineTool
id: nw_match.cwl
inputs:
- id: v
  doc: ': prints tree which do NOT match the pattern.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_match
