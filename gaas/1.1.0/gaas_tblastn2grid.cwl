class: CommandLineTool
id: gaas_tblastn2grid.pl.cwl
inputs:
- id: '100'
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: 1e_6
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: name of the protein file to read.
  type: string
  inputBinding:
    prefix: --fasta
- id: db
  doc: The name of the database use to blast.
  type: boolean
  inputBinding:
    prefix: --db
- id: chunk_size
  doc: The number of sequence by job. If not provided, default size will be 500.
  type: boolean
  inputBinding:
    prefix: --chunk_size
- id: nb_seq
  doc: The number of proteins contained in the db. Useful to cheat on the database
    size. (OrthoMCL aggregation as example). If not provided, the current database
    size is used.
  type: boolean
  inputBinding:
    prefix: --nb_seq
- id: eval
  doc: The evalue of the sequences kept in the result
  type: boolean
  inputBinding:
    prefix: --eval
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
  type: boolean
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_tblastn2grid.pl
