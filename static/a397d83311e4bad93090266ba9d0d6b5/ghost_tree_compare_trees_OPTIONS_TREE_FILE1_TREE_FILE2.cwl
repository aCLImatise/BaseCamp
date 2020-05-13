class: CommandLineTool
id: ghost_tree_compare_trees_OPTIONS_TREE_FILE1_TREE_FILE2.cwl
inputs:
- id: method
  doc: '[pearson|spearman] correlation method to use in Mantel test'
  type: boolean
  inputBinding:
    prefix: --method
outputs: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- compare-trees
- OPTIONS
- TREE_FILE1
- TREE_FILE2
