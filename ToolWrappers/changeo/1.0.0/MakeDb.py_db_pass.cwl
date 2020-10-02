class: CommandLineTool
id: MakeDb.py_db_pass.cwl
inputs:
- id: in_make_db_do_tpy
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
- MakeDb.py
- db-pass
