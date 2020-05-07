class: CommandLineTool
id: interop_aggregate.cwl
inputs:
- id: max_tile
  doc: '[0]: Maximum tile number to include'
  type: boolean
  inputBinding:
    prefix: --max-tile
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_aggregate
