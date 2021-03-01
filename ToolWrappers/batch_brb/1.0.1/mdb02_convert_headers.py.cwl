class: CommandLineTool
id: mdb02_convert_headers.py.cwl
inputs:
- id: in_db
  doc: SQLite3 database
  type: long?
  inputBinding:
    prefix: -db
- id: in_blast_db
  doc: Name of BLAST database to be created later in pipeline
  type: string?
  inputBinding:
    prefix: -blastdb
- id: in_in_file
  doc: Fasta file
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: Name of output
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- mdb02_convert_headers.py
