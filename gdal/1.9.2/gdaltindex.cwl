class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdaltindex.cwl
inputs:
- id: tile_index
  doc: ''
  type: string
  inputBinding:
    prefix: -tileindex
- id: write_absolute_path
  doc: ''
  type: boolean
  inputBinding:
    prefix: -write_absolute_path
outputs: []
cwlVersion: v1.1
baseCommand:
- gdaltindex
