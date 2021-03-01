class: CommandLineTool
id: Clustering_tree.cwl
inputs:
- id: in_tree_builder
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_id_mapping
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_merges_dot_bin
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_newick_out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Clustering
- tree
