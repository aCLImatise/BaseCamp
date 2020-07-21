class: CommandLineTool
id: ../../../format_tree_and_trait_table.py.cwl
inputs:
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
