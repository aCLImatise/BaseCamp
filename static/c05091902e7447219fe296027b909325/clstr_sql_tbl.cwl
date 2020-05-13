class: CommandLineTool
id: clstr_sql_tbl.pl.cwl
inputs:
- id: cl_str_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tbl_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clstr_sql_tbl.pl
