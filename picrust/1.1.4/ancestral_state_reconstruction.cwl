#!/usr/bin/env cwl-runner

baseCommand:
- ancestral_state_reconstruction.py
class: CommandLineTool
cwlVersion: v1.0
id: ancestral_state_reconstruction.py
inputs:
- doc: the tree to use for ASR [REQUIRED]
  id: input_tree_fp
  inputBinding:
    prefix: --input_tree_fp
  type: string
- doc: the trait table to use for ASR [REQUIRED]
  id: input_trait_table_fp
  inputBinding:
    prefix: --input_trait_table_fp
  type: string
