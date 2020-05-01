#!/usr/bin/env cwl-runner

baseCommand:
- gaas_fasta_extract_sequence_from_OG.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_fasta_extract_sequence_from_og.pl
inputs:
- doc: Input fasta file.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: 'The OG file contains all the orthoMCL groups and the ID of the sequences in
    each group. eg : OG_1000: 5833|MAL13P1.2:pep 5833|PF10_0398:pep OG_1001: 5833|MAL13P1.1:pep
    5833|PFE0005w:pep 5833|MAL8P1.220:pep 5833|PFF1595c:pep'
  id: og
  inputBinding:
    prefix: --og
  type: boolean
- doc: optional you can choose a name for the output folder, by default it will be
    called OG_fasta
  id: dir
  inputBinding:
    prefix: --dir
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
