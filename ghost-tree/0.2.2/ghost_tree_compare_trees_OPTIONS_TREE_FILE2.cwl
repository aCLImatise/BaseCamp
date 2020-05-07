class: CommandLineTool
id: ghost_tree_compare_trees_OPTIONS_TREE_FILE2.cwl
inputs:
- id: tree_file_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree_file_2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- compare-trees
- OPTIONS
- TREE_FILE2
