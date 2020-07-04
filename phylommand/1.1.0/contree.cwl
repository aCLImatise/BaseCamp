class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/contree.cwl
inputs:
- id: as_last_argument
  doc: as last argument).
  type: string
  inputBinding:
    prefix: -f
- id: output
  doc: (default w).
  type: string
  inputBinding:
    prefix: --output
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_dot_trees
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- contree
