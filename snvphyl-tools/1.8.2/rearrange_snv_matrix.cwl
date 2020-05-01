#!/usr/bin/env cwl-runner

baseCommand:
- rearrange_snv_matrix.pl
class: CommandLineTool
cwlVersion: v1.0
id: rearrange_snv_matrix.pl
inputs:
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ''
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
