#!/usr/bin/env cwl-runner

baseCommand:
- parallel_predict_traits.py
class: CommandLineTool
cwlVersion: v1.0
id: parallel_predict_traits.py
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
- doc: the output filepath for trait predictions [REQUIRED]
  id: output_trait_table
  inputBinding:
    prefix: --output_trait_table
  type: string
