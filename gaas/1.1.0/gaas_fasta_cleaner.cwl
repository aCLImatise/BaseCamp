#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_cleaner.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_cleaner.pl
inputs:
- doc: Input fasta file.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: Add verbosity
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Output fasta file. If no output file is specified, the output will be written
    to STDOUT.
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: description,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: relevant information as possible,
  id: as
  inputBinding:
    prefix: '- as'
  type: string
- doc: used,
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: sample,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: of the expected behaviour that is not occurring.
  id: an
  inputBinding:
    prefix: '- an'
  type: string
