class: CommandLineTool
id: anvi_script_checkm_tree_to_interactive.cwl
inputs:
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: ''
  type: Directory
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-checkm-tree-to-interactive
