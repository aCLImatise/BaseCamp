class: CommandLineTool
id: ../../../ghost_tree_extensions.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ghost-tree
- extensions
