class: CommandLineTool
id: table_add_column.py.cwl
inputs:
- id: header
  doc: ':    keep header in output'
  type: boolean
  inputBinding:
    prefix: --header
- id: comments
  doc: ':  keep comments in output'
  type: boolean
  inputBinding:
    prefix: --comments
outputs: []
cwlVersion: v1.1
baseCommand:
- table_add_column.py
