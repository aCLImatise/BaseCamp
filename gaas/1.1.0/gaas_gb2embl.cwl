#!/usr/bin/env cwl-runner

baseCommand:
- gaas_gb2embl.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_gb2embl.pl
inputs:
- doc: Input genebank file that will be read
  id: gb
  inputBinding:
    prefix: --gb
  type: boolean
- doc: ', --output , --out , --outfile or --embl Output embl file. If no output file
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
