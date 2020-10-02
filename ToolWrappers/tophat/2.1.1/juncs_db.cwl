class: CommandLineTool
id: juncs_db.cwl
inputs:
- id: in_min_anchor
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read_length
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- juncs_db
