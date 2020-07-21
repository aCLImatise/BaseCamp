class: CommandLineTool
id: ../../../add_tradis_tags.cwl
inputs:
- id: b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
- id: add_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- add_tradis_tags
