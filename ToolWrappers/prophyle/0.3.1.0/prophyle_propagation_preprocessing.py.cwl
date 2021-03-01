class: CommandLineTool
id: prophyle_propagation_preprocessing.py.cwl
inputs:
- id: in_rate_sampling_tree
  doc: rate of sampling the tree [no sampling]
  type: double?
  inputBinding:
    prefix: -s
- id: in_autocomplete_tree_names
  doc: autocomplete tree (names of internal nodes and FASTA paths)
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_add_prefixes_node
  doc: do not add prefixes to node names
  type: boolean?
  inputBinding:
    prefix: -P
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle_propagation_preprocessing.py
