class: CommandLineTool
id: ../../../ghost_tree_scaffold.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ghost-tree
- scaffold
