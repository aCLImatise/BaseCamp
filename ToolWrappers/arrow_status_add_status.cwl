class: CommandLineTool
id: arrow_status_add_status.cwl
inputs:
- id: in_status
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
- add_status
