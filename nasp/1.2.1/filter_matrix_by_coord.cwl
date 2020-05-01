#!/usr/bin/env cwl-runner

baseCommand:
- filter_matrix_by_coord.py
class: CommandLineTool
cwlVersion: v1.0
id: filter_matrix_by_coord.py
inputs:
- doc: /path/to/file [REQUIRED]
  id: in_matrix
  inputBinding:
    prefix: --in_matrix
  type: string
- doc: prefix for output files [REQUIRED]
  id: out_prefix
  inputBinding:
    prefix: --out_prefix
  type: string
- doc: /path/to/file [REQUIRED]
  id: in_coords
  inputBinding:
    prefix: --in_coords
  type: string
- doc: 'action to perform: keep SNPs in range or remove?, defaults to keep'
  id: action
  inputBinding:
    prefix: --action
  type: string
