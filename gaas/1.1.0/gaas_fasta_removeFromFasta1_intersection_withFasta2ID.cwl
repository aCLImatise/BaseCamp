#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_removeFromFasta1_intersection_withFasta2ID.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_removefromfasta1_intersection_withfasta2id.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: my_script_pl
  inputBinding:
    position: 1
  type: string
- doc: Fasta file 1. The headers of sequences of this file will be used to compare
    against those to file 2.
  id: fasta1
  inputBinding:
    prefix: --fasta1
  type: string
- doc: Fasta file 2. This is the "reference file" in which we will remove sequences
    already existing in file 1.
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
