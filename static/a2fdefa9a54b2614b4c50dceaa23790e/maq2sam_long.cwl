class: CommandLineTool
id: maq2sam_long.cwl
inputs:
- id: maq2sam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_map
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: read_group
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- maq2sam-long
