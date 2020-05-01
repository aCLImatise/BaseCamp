#!/usr/bin/env cwl-runner

baseCommand:
- locarna-mea.pl
class: CommandLineTool
cwlVersion: v1.0
id: locarna-mea.pl
inputs:
- doc: ''
  id: loca_rna_me_a
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: in_file_pp
  inputBinding:
    position: 1
  type: string
- doc: documentation
  id: man
  inputBinding:
    prefix: --man
  type: string
