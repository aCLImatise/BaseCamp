#!/usr/bin/env cwl-runner

baseCommand:
- metaSNV.py
class: CommandLineTool
cwlVersion: v1.0
id: metasnv.py
inputs:
- doc: A metaSNP initialized project directory
  id: dir
  inputBinding:
    position: 0
  type: string
- doc: File with an input list of bam files, one file per line
  id: file
  inputBinding:
    position: 1
  type: File
- doc: reference multi-sequence FASTA file used for the alignments.
  id: ref_db_file
  inputBinding:
    position: 2
  type: string
- doc: Database gene annotation.
  id: db_ann
  inputBinding:
    prefix: --db_ann
  type: string
- doc: Instead of executing the commands, simply print them out
  id: print_commands
  inputBinding:
    prefix: --print-commands
  type: boolean
- doc: Number of jobs to run simmultaneously. Will create same number of splits, unless
    n_splits set differently.
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: Number of bins to split ref into
  id: n_splits
  inputBinding:
    prefix: --n_splits
  type: long
