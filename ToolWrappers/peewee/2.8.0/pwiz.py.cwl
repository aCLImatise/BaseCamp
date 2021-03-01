class: CommandLineTool
id: pwiz.py.cwl
inputs:
- id: in_password
  doc: "Database type, e.g. sqlite, mysql or postgresql.\nDefault is \"postgresql\"\
    ."
  type: string?
  inputBinding:
    prefix: --password
- id: in_schema
  doc: "Only generate the specified tables. Multiple table\nnames should be separated\
    \ by commas."
  type: string?
  inputBinding:
    prefix: --schema
- id: in_info
  doc: "Add database information and other metadata to top of\nthe generated file."
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_preserve_order
  doc: Model definition column ordering matches source table.
  type: boolean?
  inputBinding:
    prefix: --preserve-order
- id: in_database_name
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
- pwiz.py
