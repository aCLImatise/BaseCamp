class: CommandLineTool
id: match_list_col.awk_col.cwl
inputs:
- id: list_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: col
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- match-list-col.awk
- col
