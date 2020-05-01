#!/usr/bin/env cwl-runner

baseCommand:
- gaas_embl2gb.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_embl2gb.pl
inputs:
- doc: Input EMBL file that will be read
  id: embl
  inputBinding:
    prefix: -embl
  type: boolean
- doc: ', --output , --out , --outfile or --gb Output Genbank file. If no output file
    is specified, the output will be written to STDOUT.'
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
