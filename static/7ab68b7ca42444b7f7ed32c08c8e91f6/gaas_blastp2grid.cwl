class: CommandLineTool
id: gaas_blastp2grid.pl.cwl
inputs:
- id: fast_a
  doc: The name of the protein fasta file to use as query.
  type: string
  inputBinding:
    prefix: --fasta
- id: db
  doc: The name of the database use to blast
  type: boolean
  inputBinding:
    prefix: --db
- id: nb_seq
  doc: The number of proteins contained in the db. Useful to cheat on the database
    size. (OrthoMCL aggregation as example). If not provided, the current database
    size is used.
  type: boolean
  inputBinding:
    prefix: --nb_seq
- id: eval
  doc: The maximu evalue of the sequences kept in the result
  type: boolean
  inputBinding:
    prefix: --eval
- id: chunk_size
  doc: The number of sequence by job. If not provided, default size will be 500.
  type: boolean
  inputBinding:
    prefix: --chunk_size
- id: queue
  doc: you want to define a particular queue to run the jobs
  type: string
  inputBinding:
    prefix: --queue
- id: grid
  doc: Define which grid to use, Slurm, Lsf or None. Default = Slurm.
  type: boolean
  inputBinding:
    prefix: --grid
- id: quiet
  doc: Quiet mode
  type: string
  inputBinding:
    prefix: --quiet
- id: outdir
  doc: The name of the output directory.
  type: string
  inputBinding:
    prefix: --outdir
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_blastp2grid.pl
