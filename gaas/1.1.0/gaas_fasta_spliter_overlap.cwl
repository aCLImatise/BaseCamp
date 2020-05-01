#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_spliter_overlap.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_spliter_overlap.pl
inputs:
- doc: Input fasta file.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: Integer corresponding to a size in bp. Default value 1000. Sequence under the
    value will be discarded from the output.
  id: size
  inputBinding:
    prefix: --size
  type: boolean
- doc: Output fasta file. If no output file is specified, the output will be written
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
