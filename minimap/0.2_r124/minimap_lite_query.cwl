class: CommandLineTool
id: minimap_lite_query.fa.cwl
inputs:
- id: target_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- minimap-lite
- query.fa
