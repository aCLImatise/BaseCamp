class: CommandLineTool
id: mdb01_makeblastdb.sh.cwl
inputs:
- id: in_in_file
  doc: REQUIRED; fasta file to create BLAST database from
  type: boolean?
  inputBinding:
    prefix: --infile
- id: in_database
  doc: OPTIONAL; Name of SQLite3 database, default is accession_db.db
  type: boolean?
  inputBinding:
    prefix: --database
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- mdb01_makeblastdb.sh
