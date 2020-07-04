class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophyle_propagation_preprocessing.py.cwl
inputs:
- id: rate_sampling_tree
  doc: rate of sampling the tree [no sampling]
  type: double
  inputBinding:
    prefix: -s
- id: autocomplete_tree_names
  doc: autocomplete tree (names of internal nodes and FASTA paths)
  type: boolean
  inputBinding:
    prefix: -A
- id: verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -V
- id: add_prefixes_node
  doc: do not add prefixes to node names
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_propagation_preprocessing.py
