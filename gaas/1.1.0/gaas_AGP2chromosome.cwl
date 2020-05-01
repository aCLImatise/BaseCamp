#!/usr/bin/env cwl-runner

baseCommand:
- gaas_AGP2chromosome.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_agp2chromosome.pl
inputs:
- doc: Input AGP file
  id: agp
  inputBinding:
    prefix: --agp
  type: string
- doc: Input fasta file.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: Output GFF file. If no output file is specified, the output will be written
    to STDOUT.
  id: output
  inputBinding:
    prefix: --output
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
