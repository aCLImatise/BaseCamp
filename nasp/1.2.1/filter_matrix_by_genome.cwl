#!/usr/bin/env cwl-runner

baseCommand:
- filter_matrix_by_genome.py
class: CommandLineTool
cwlVersion: v1.0
id: filter_matrix_by_genome.py
inputs:
- doc: /path/to/NASP_matrix [REQUIRED]
  id: in_matrix
  inputBinding:
    prefix: --in_matrix
  type: string
- doc: prefix for output files [REQUIRED]
  id: out_prefix
  inputBinding:
    prefix: --out_prefix
  type: string
- doc: /path/to/genomes_file [new line delimited] [REQUIRED]
  id: genomes
  inputBinding:
    prefix: --genomes
  type: string
- doc: action to perform (keep, remove), defaults to keep
  id: actions
  inputBinding:
    prefix: --actions
  type: string
