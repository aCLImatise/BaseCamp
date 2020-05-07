class: CommandLineTool
id: format_tree_and_trait_table.py.cwl
inputs:
- id: add
  doc: (epsilon) branch lengths in place of 0 length branches
  type: string
  inputBinding:
    prefix: -- Add
- id: filter
  doc: taxa that don't match between tree and trait table
  type: string
  inputBinding:
    prefix: -- Filter
- id: output
  doc: in NEXUS format
  type: string
  inputBinding:
    prefix: -- Output
- id: ensure
  doc: is bifurcating (remove polytomies using very short branches)
  type: string
  inputBinding:
    prefix: -- Ensure
- id: convert
  doc: point trait values to integers
  type: double
  inputBinding:
    prefix: -- Convert
- id: add
  doc: short branch length to the root branch (required by BayesTraits)
  type: string
  inputBinding:
    prefix: -- Add
- id: remove
  doc: node names (required by BayesTraits)
  type: long
  inputBinding:
    prefix: -- Remove
- id: input_tree
  doc: the input tree (Newick format) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_tree
- id: input_trait_table
  doc: the input trait table (QIIME OTU table format) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_trait_table
outputs: []
cwlVersion: v1.1
baseCommand:
- format_tree_and_trait_table.py
