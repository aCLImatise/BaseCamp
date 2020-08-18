class: CommandLineTool
id: ../../../clan_index.cwl
inputs:
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: reference_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clan_index
