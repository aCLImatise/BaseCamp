#!/usr/bin/env cwl-runner

baseCommand:
- snv_matrix.pl
class: CommandLineTool
cwlVersion: v1.0
id: snv_matrix.pl
inputs:
- doc: ''
  id: snv_align_phy
  inputBinding:
    position: 0
  type: string
- doc: ':  Print more information (to stderr)'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ':  Prints matrix to passed file'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
