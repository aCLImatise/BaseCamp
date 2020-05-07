class: CommandLineTool
id: show_aligns_deltafile_ref ID.cwl
inputs:
- id: qry_id
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- show-aligns
- deltafile
- ref ID
