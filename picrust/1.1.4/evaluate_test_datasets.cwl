#!/usr/bin/env cwl-runner

baseCommand:
- evaluate_test_datasets.py
class: CommandLineTool
cwlVersion: v1.0
id: evaluate_test_datasets.py
inputs:
- doc: the input trait table directory (files in biom format) [REQUIRED]
  id: trait_table_dir
  inputBinding:
    prefix: --trait_table_dir
  type: string
- doc: the input expected trait table directory (files in biom format) [REQUIRED]
  id: exp_trait_table_dir
  inputBinding:
    prefix: --exp_trait_table_dir
  type: string
- doc: the output directory [REQUIRED]
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: string
