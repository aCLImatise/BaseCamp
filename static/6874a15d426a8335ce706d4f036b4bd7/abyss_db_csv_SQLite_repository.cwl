class: CommandLineTool
id: ../../../abyss_db_csv_SQLite_repository.cwl
inputs:
- id: table_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-db-csv
- SQLite_repository
