class: CommandLineTool
id: ghost_tree_silva.cwl
inputs:
- id: extract_fungi
  doc: "'extract-fungi' uses files that are unique to the SILVA..."
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ghost-tree
- silva
