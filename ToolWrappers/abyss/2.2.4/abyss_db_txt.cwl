class: CommandLineTool
id: abyss_db_txt.cwl
inputs:
- id: in_sqlite_repository
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
- abyss-db-txt
