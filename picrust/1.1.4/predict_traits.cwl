#!/usr/bin/env cwl-runner

baseCommand:
- predict_traits.py
class: CommandLineTool
cwlVersion: v1.0
id: predict_traits.py
inputs:
- doc: the input trait table describing directly observed traits (e.g. sequenced genomes)
    in tab-delimited format [REQUIRED]
  id: observed_trait_table
  inputBinding:
    prefix: --observed_trait_table
  type: string
- doc: the full reference tree, in Newick format [REQUIRED]
  id: tree
  inputBinding:
    prefix: --tree
  type: string
