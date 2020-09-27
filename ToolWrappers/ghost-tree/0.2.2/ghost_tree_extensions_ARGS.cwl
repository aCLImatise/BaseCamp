class: CommandLineTool
id: ghost_tree_extensions_ARGS.cwl
inputs:
- id: in_ghost_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_extensions
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ghost-tree
- extensions
- ARGS
