class: CommandLineTool
id: ../../../minimap_lite.cwl
inputs:
- id: target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- minimap-lite
