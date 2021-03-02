class: CommandLineTool
id: accession_retrieve.cwl
inputs:
- id: in_csv
  doc: "csv file of parameters, required\ncsv must be in format: FASTA_FILE, JOB_NAME,\
    \ BLAST_DATABASE_NAME, SQLITE3_DATABASE, EVALUE, MAX, NUM_THREADS\nThe following\
    \ fields are optional, defualt values are shown, all other fields are required:\n\
    SQLITE3_DB: SQLite3 database, default = accession_db.db\nEVALUE: Expect value\
    \ for BLAST, default = 0.1\nMAX: int, maximum numnber of sequences to retrieve\
    \ in BLAST, default = 5\nNUM_THREADS: int, number of threads to use, default =\
    \ 4\n"
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
- accession_retrieve
