#!/usr/bin/env cwl-runner

baseCommand:
- compare_biom.py
class: CommandLineTool
cwlVersion: v1.0
id: compare_biom.py
inputs:
- doc: the expected trait table (biom format) [REQUIRED]
  id: exp_trait_table_fp
  inputBinding:
    prefix: --exp_trait_table_fp
  type: string
- doc: the output file [REQUIRED]
  id: output_fp
  inputBinding:
    prefix: --output_fp
  type: string
