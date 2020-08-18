class: CommandLineTool
id: ../../../gdalbuildvrt.cwl
inputs:
- id: tile_index
  doc: ''
  type: string
  inputBinding:
    prefix: -tileindex
outputs: []
cwlVersion: v1.1
baseCommand:
- gdalbuildvrt
