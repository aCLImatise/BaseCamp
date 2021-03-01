class: CommandLineTool
id: arrow_status_delete_status.cwl
inputs:
- id: in_id_number
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arrow
- status
- delete_status
