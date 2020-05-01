#!/usr/bin/env cwl-runner

baseCommand:
- format_tree_and_trait_table.py
class: CommandLineTool
cwlVersion: v1.0
id: format_tree_and_trait_table.py
inputs:
- doc: (epsilon) branch lengths in place of 0 length branches
  id: add
  inputBinding:
    prefix: -- Add
  type: string
- doc: taxa that don't match between tree and trait table
  id: filter
  inputBinding:
    prefix: -- Filter
  type: string
- doc: in NEXUS format
  id: output
  inputBinding:
    prefix: -- Output
  type: string
- doc: is bifurcating (remove polytomies using very short branches)
  id: ensure
  inputBinding:
    prefix: -- Ensure
  type: string
- doc: point trait values to integers
  id: convert
  inputBinding:
    prefix: -- Convert
  type: double
- doc: short branch length to the root branch (required by BayesTraits)
  id: add
  inputBinding:
    prefix: -- Add
  type: string
- doc: node names (required by BayesTraits)
  id: remove
  inputBinding:
    prefix: -- Remove
  type: long
- doc: the input tree (Newick format) [REQUIRED]
  id: input_tree
  inputBinding:
    prefix: --input_tree
  type: string
- doc: the input trait table (QIIME OTU table format) [REQUIRED]
  id: input_trait_table
  inputBinding:
    prefix: --input_trait_table
  type: string
