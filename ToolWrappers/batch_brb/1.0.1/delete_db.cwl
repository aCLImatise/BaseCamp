class: CommandLineTool
id: delete_db.cwl
inputs:
- id: in_csv
  doc: "csv file of parameters, required\ncsv must be in format: BLAST_DB, SQLITE3_DB\n\
    BLAST_DB: Required, name of BLAST database to delete\nSQLITE3_DB: Optional, SQLite3\
    \ database where data is stored, default = accession_db.db\n"
  type: boolean?
  inputBinding:
    prefix: -csv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- delete_db
