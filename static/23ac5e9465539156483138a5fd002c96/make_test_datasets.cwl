class: CommandLineTool
id: make_test_datasets.py.cwl
inputs:
- id: input_trait_table
  doc: the input trait table. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_trait_table
- id: input_tree
  doc: the input tree in Newick format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_tree
outputs: []
cwlVersion: v1.1
baseCommand:
- make_test_datasets.py
