class: CommandLineTool
id: ghost_tree_compare_trees.cwl
inputs:
- id: in_method
  doc: "[pearson|spearman]\ncorrelation method to use in Mantel test"
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_tree_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_tree_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- compare-trees
