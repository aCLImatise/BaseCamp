class: CommandLineTool
id: ../../../checkv_update_database.cwl
inputs:
- id: quiet
  doc: Suppress logging messages
  type: boolean
  inputBinding:
    prefix: --quiet
- id: restart
  doc: Overwrite existing database
  type: boolean
  inputBinding:
    prefix: --restart
- id: threads
  doc: Number of threads for Prodigal and DIAMOND
  type: long
  inputBinding:
    prefix: --threads
- id: source_db
  doc: Path to current CheckV database.
  type: string
  inputBinding:
    position: 0
- id: dest_db
  doc: Path to updated CheckV database.
  type: string
  inputBinding:
    position: 1
- id: genomes
  doc: FASTA file of complete genomes to add to database, where each nucleotide sequence
    represents one genome.
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- update_database
