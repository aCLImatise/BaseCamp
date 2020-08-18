class: CommandLineTool
id: ../../../deSALT_index_index_route.cwl
inputs:
- id: de_bga
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: index_route
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- deSALT
- index
- index_route
