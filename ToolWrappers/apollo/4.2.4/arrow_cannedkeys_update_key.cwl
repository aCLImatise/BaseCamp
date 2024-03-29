class: CommandLineTool
id: arrow_cannedkeys_update_key.cwl
inputs:
- id: in_metadata
  doc: Optional metadata
  type: string?
  inputBinding:
    prefix: --metadata
- id: in_id_number
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_new_key
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- cannedkeys
- update_key
