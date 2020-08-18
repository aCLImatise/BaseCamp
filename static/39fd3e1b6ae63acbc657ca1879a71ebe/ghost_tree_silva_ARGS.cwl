class: CommandLineTool
id: ../../../ghost_tree_silva_ARGS.cwl
inputs:
- id: ghost_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: silva
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
- silva
- ARGS
