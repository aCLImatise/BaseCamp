class: CommandLineTool
id: Rsample_SHAPE file.cwl
inputs:
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: shapefile
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pfs_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- Rsample
- SHAPE file
