#!/usr/bin/env cwl-runner

baseCommand:
- matrix_to_fasta.py
class: CommandLineTool
cwlVersion: v1.0
id: matrix_to_fasta.py
inputs:
- doc: /path/to/NASP_matrix [REQUIRED]
  id: input_matrix
  inputBinding:
    prefix: --input_matrix
  type: string
- doc: prefix for outfiles [REQUIRED]
  id: output_prefix
  inputBinding:
    prefix: --output_prefix
  type: string
- doc: filter out missing data if missing is greater than or equal to given frequency,
    defaults to 1
  id: filter_frequency
  inputBinding:
    prefix: --filter_frequency
  type: string
