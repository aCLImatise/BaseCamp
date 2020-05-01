#!/usr/bin/env cwl-runner

baseCommand:
- gaas_tblastn2grid.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_tblastn2grid.pl
inputs:
- doc: ''
  id: '100'
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: 1e_6
  inputBinding:
    position: 1
  type: string
- doc: name of the protein file to read.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: The name of the database use to blast.
  id: db
  inputBinding:
    prefix: --db
  type: boolean
- doc: The number of sequence by job. If not provided, default size will be 500.
  id: chunk_size
  inputBinding:
    prefix: --chunk_size
  type: boolean
- doc: The number of proteins contained in the db. Useful to cheat on the database
    size. (OrthoMCL aggregation as example). If not provided, the current database
    size is used.
  id: nb_seq
  inputBinding:
    prefix: --nb_seq
  type: boolean
- doc: The evalue of the sequences kept in the result
  id: eval
  inputBinding:
    prefix: --eval
  type: boolean
- doc: you want to define a particular queue to run the jobs
  id: queue
  inputBinding:
    prefix: --queue
  type: string
- doc: Define which grid to use, Slurm, Lsf or None. Default = Slurm.
  id: grid
  inputBinding:
    prefix: --grid
  type: boolean
- doc: Quiet mode
  id: quiet
  inputBinding:
    prefix: --quiet
  type: string
- doc: The name of the output directory.
  id: outdir
  inputBinding:
    prefix: --outdir
  type: boolean
