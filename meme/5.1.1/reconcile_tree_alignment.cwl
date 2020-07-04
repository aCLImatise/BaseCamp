class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/reconcile_tree_alignment.cwl
inputs:
- id: input_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_tree
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_alignment
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- reconcile-tree-alignment
