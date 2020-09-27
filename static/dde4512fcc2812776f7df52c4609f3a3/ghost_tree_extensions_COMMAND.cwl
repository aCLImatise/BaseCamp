class: CommandLineTool
id: ghost_tree_extensions_COMMAND.cwl
inputs:
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ghost-tree
- extensions
- COMMAND
