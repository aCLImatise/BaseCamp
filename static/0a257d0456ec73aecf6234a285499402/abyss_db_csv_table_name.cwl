class: CommandLineTool
id: abyss_db_csv_table_name.cwl
inputs:
- id: in_abyss_db_csv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sqlite_repository
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_table_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- abyss-db-csv
- table_name
