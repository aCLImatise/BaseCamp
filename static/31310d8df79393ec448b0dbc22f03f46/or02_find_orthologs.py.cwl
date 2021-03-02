class: CommandLineTool
id: or02_find_orthologs.py.cwl
inputs:
- id: in_sql_db
  doc: name of SQLite3 database
  type: long?
  inputBinding:
    prefix: -sqldb
- id: in_blast_db
  doc: name of first BLAST database if alias database was used
  type: string?
  inputBinding:
    prefix: -blastdb
- id: in_r_blast_file
  doc: "Input BLAST file with the following columns: qseqid sseqid\npident length\
    \ mismatch gapopen qstart qend sstart send\nevalue bitscore gaps"
  type: string
  inputBinding:
    position: 0
- id: in_f_blast_file
  doc: "Filtered First BLAST file with the following columns:\nqseqid sseqid pident\
    \ length mismatch gapopen qstart qend\nsstart send evalue bitscore gaps document"
  type: string
  inputBinding:
    position: 1
- id: in_outfile
  doc: Name of output
  type: string
  inputBinding:
    position: 2
- id: in_hit_num
  doc: Integer, Number of hits to include
  type: string
  inputBinding:
    position: 3
- id: in_coverage
  doc: Integer, Coverage of alignment (percentage)
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- or02_find_orthologs.py
