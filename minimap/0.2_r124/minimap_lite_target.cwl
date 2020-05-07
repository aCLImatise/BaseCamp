class: CommandLineTool
id: minimap_lite_target.fa.cwl
inputs:
- id: query_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- minimap-lite
- target.fa
