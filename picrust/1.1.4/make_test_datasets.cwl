#!/usr/bin/env cwl-runner

baseCommand:
- make_test_datasets.py
class: CommandLineTool
cwlVersion: v1.0
id: make_test_datasets.py
inputs:
- doc: the input trait table. [REQUIRED]
  id: input_trait_table
  inputBinding:
    prefix: --input_trait_table
  type: string
- doc: the input tree in Newick format [REQUIRED]
  id: input_tree
  inputBinding:
    prefix: --input_tree
  type: string
