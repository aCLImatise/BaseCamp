class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ghost_tree_extensions_ARGS.cwl
inputs:
- id: ghost_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: extensions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- extensions
- ARGS
