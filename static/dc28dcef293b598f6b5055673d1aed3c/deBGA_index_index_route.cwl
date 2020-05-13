class: CommandLineTool
id: deBGA_index_index_route.cwl
inputs:
- id: reference_fast_a
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
- index_route
