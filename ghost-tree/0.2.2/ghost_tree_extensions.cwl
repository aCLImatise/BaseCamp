class: CommandLineTool
id: ghost_tree_extensions.cwl
inputs:
- id: group_extensions
  doc: Creates an OTU map from a sequence file in .fasta format...
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- extensions
