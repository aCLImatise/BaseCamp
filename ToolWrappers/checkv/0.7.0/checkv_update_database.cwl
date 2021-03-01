class: CommandLineTool
id: checkv_update_database.cwl
inputs:
- id: in_quiet
  doc: Suppress logging messages
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_restart
  doc: Overwrite existing database
  type: boolean?
  inputBinding:
    prefix: --restart
- id: in_threads
  doc: Number of threads for Prodigal and DIAMOND
  type: long?
  inputBinding:
    prefix: --threads
- id: in_source_db
  doc: Path to current CheckV database.
  type: string
  inputBinding:
    position: 0
- id: in_dest_db
  doc: Path to updated CheckV database.
  type: string
  inputBinding:
    position: 1
- id: in_genomes
  doc: "FASTA file of complete genomes to add to database, where each\nnucleotide\
    \ sequence represents one genome."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkv:0.7.0--py_1
cwlVersion: v1.1
baseCommand:
- checkv
- update_database
