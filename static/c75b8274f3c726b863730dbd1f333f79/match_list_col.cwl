class: CommandLineTool
id: ../../../match_list_col.awk_col.cwl
inputs:
- id: match_list_cold_ot_awk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: col
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- match-list-col.awk
- col
