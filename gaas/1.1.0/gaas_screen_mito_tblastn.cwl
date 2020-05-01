#!/usr/bin/env cwl-runner

baseCommand:
- gaas_screen_mito_tblastn.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_screen_mito_tblastn.pl
inputs:
- doc: Input tabulated blast file -outfmt 6
  id: tab
  inputBinding:
    prefix: --tab
  type: boolean
- doc: The output will be the EMBL file with the record "headers" modified
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Optional. Genome in fasta format. Allow to calculate the mapping coverage.
  id: genome
  inputBinding:
    prefix: --genome
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
