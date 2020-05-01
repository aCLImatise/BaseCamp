#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_extract_sequence_from_id.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_extract_sequence_from_id.pl
inputs:
- doc: Input fasta file.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: Could be a sequence name to retrieve in the fasta file, or a file containing
    a list of sequence name (one by line).
  id: name
  inputBinding:
    prefix: --name
  type: boolean
- doc: Integer, number of line to avoid. Allow to avoid headers.
  id: line
  inputBinding:
    prefix: --line
  type: boolean
- doc: column containing the ID. By default the first column is considered.
  id: col
  inputBinding:
    prefix: --col
  type: boolean
- doc: Field separator, by default un-printable character are use as separator (\s).
    You can define the one you wnat with this option.
  id: q
  inputBinding:
    prefix: -q
  type: boolean
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
