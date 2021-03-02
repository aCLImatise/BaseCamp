class: CommandLineTool
id: make_table.cwl
inputs:
- id: in_cols
  doc: ''
  type: long?
  inputBinding:
    prefix: -cols
- id: in_rows
  doc: ''
  type: long?
  inputBinding:
    prefix: -rows
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- make-table
