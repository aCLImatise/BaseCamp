class: CommandLineTool
id: aliasdb_pipeline.cwl
inputs:
- id: in_csv
  doc: "csv file of parameters, required\ncsv must be in format: DBLIST_FILE, DBTYPE,\
    \ TITLE, OUTPUT, SQLITE3_DATABASE\nThe following fields are optional, defualt\
    \ values are shown, all other fields are required:\nSQLITE3_DB: default = accession_db.db\n"
  type: File?
  inputBinding:
    prefix: -csv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_csv
  doc: "csv file of parameters, required\ncsv must be in format: DBLIST_FILE, DBTYPE,\
    \ TITLE, OUTPUT, SQLITE3_DATABASE\nThe following fields are optional, defualt\
    \ values are shown, all other fields are required:\nSQLITE3_DB: default = accession_db.db\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_csv)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- aliasdb_pipeline
