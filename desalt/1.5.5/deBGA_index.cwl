class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/deBGA_index.cwl
inputs:
- id: reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index_route
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- deBGA
- index
