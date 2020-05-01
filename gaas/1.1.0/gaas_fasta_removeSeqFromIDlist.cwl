#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_removeSeqFromIDlist.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_removeseqfromidlist.pl
inputs:
- doc: Fasta file 1. The headers of sequences of this file will be used to compare
    against those to file 2.
  id: fasta1
  inputBinding:
    prefix: --fasta1
  type: string
- doc: This is a file containing the headers of sequence to be removed. Only one ID
    per line. Header should be identical at 100% to be removed.
  id: fasta2
  inputBinding:
    prefix: --fasta2
  type: string
- doc: ', --output , --out or --outfile Output fasta file. If no output file is specified,
    the output will be written to STDOUT.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
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
