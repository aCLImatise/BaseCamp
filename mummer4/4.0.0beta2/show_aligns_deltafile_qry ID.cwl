class: CommandLineTool
id: show_aligns_deltafile_qry ID.cwl
inputs:
- id: refid
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: qry_id
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- show-aligns
- deltafile
- qry ID
