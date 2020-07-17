class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/treeator.cwl
inputs:
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
- id: data_file_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- treeator
