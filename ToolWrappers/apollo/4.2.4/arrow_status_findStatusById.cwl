class: CommandLineTool
id: arrow_status_findStatusById.cwl
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
cwlVersion: v1.1
baseCommand:
- arrow
- status
- findStatusById
