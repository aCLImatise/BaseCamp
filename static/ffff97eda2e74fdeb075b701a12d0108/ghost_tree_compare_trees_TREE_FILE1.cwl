class: CommandLineTool
id: ghost_tree_compare_trees_TREE_FILE1.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree_file_1
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tree_file_2
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- compare-trees
- TREE_FILE1
