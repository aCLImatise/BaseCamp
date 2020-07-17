class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ghost_tree_compare_trees.cwl
inputs:
- id: method
  doc: '[pearson|spearman] correlation method to use in Mantel test'
  type: boolean
  inputBinding:
    prefix: --method
- id: tree_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- compare-trees
