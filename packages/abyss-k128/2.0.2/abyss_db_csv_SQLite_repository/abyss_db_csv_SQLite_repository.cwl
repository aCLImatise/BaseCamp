class: CommandLineTool
id: abyss_db_csv_SQLite_repository.cwl
inputs:
- id: in_table_name
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
- abyss-db-csv
- SQLite_repository
