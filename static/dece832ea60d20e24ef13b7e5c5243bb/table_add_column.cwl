class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/table_add_column.py.cwl
inputs:
- id: header
  doc: keep header in output
  type: boolean
  inputBinding:
    prefix: --header
- id: comments
  doc: keep comments in output
  type: boolean
  inputBinding:
    prefix: --comments
- id: expression
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: colname
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- table_add_column.py
