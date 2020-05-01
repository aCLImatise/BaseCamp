#!/usr/bin/env cwl-runner

baseCommand:
- gaas_scaffold2AGP.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_scaffold2agp.pl
inputs:
- doc: Input fasta file.
  id: ref_file
  inputBinding:
    prefix: -reffile
  type: string
- doc: Output agp file.
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
