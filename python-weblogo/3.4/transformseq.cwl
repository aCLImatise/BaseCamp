#!/usr/bin/env cwl-runner

baseCommand:
- transformseq
class: CommandLineTool
cwlVersion: v1.0
id: transformseq
inputs:
- doc: 'Sequence input file (default: stdin)'
  id: fin
  inputBinding:
    prefix: --fin
  type: File
- doc: 'Multiple sequence alignment format: (clustal, fasta, plain, msf, genbank,
    nbrf, nexus, phylip, stockholm, intelligenetics, table, array)'
  id: format_in
  inputBinding:
    prefix: --format-in
  type: string
- doc: 'Output file (default: stdout)'
  id: f_out
  inputBinding:
    prefix: --fout
  type: File
- doc: 'Multiple sequence alignment output format: (clustal, fasta, plain, intelligenetics,
    table, array) (Default: fasta)'
  id: format_out
  inputBinding:
    prefix: --format-out
  type: string
- doc: Mask low complexity regions in protein sequences.
  id: seg
  inputBinding:
    prefix: --seg
  type: boolean
- doc: Return a random subsample of the sequences.
  id: subsample
  inputBinding:
    prefix: --subsample
  type: string
- doc: reverse sequences
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: complement DNA sequences
  id: complement
  inputBinding:
    prefix: --complement
  type: boolean
