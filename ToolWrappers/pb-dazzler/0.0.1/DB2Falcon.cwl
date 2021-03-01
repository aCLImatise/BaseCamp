class: CommandLineTool
id: DB2Falcon.cwl
inputs:
- id: in_u
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_db_two_fast_a
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DB2Falcon
