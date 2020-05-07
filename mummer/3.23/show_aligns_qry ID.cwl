class: CommandLineTool
id: show_aligns_qry ID.cwl
inputs:
- id: delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: refid
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: qry_id
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- show-aligns
- qry ID
