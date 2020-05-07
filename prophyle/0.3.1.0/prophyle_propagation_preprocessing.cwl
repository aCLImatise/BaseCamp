class: CommandLineTool
id: prophyle_propagation_preprocessing.py.cwl
inputs:
- id: s
  doc: rate of sampling the tree [no sampling]
  type: double
  inputBinding:
    prefix: -s
- id: a
  doc: autocomplete tree (names of internal nodes and FASTA paths)
  type: boolean
  inputBinding:
    prefix: -A
- id: v
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -V
- id: p
  doc: do not add prefixes to node names
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_propagation_preprocessing.py
