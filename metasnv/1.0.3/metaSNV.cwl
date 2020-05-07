class: CommandLineTool
id: metaSNV.py.cwl
inputs:
- id: dir
  doc: A metaSNP initialized project directory
  type: string
  inputBinding:
    position: 0
- id: file
  doc: File with an input list of bam files, one file per line
  type: File
  inputBinding:
    position: 1
- id: ref_db_file
  doc: reference multi-sequence FASTA file used for the alignments.
  type: string
  inputBinding:
    position: 2
- id: db_ann
  doc: Database gene annotation.
  type: string
  inputBinding:
    prefix: --db_ann
- id: print_commands
  doc: Instead of executing the commands, simply print them out
  type: boolean
  inputBinding:
    prefix: --print-commands
- id: threads
  doc: Number of jobs to run simmultaneously. Will create same number of splits, unless
    n_splits set differently.
  type: long
  inputBinding:
    prefix: --threads
- id: n_splits
  doc: Number of bins to split ref into
  type: long
  inputBinding:
    prefix: --n_splits
outputs: []
cwlVersion: v1.1
baseCommand:
- metaSNV.py
