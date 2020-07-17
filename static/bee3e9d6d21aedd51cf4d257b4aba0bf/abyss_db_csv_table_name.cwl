class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/abyss_db_csv_table_name.cwl
inputs:
- id: abyss_db_csv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sqlite_repository
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: table_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- abyss-db-csv
- table_name
