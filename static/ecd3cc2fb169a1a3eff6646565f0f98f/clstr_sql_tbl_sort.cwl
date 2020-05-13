class: CommandLineTool
id: clstr_sql_tbl_sort.pl.cwl
inputs:
- id: table_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: level
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clstr_sql_tbl_sort.pl
