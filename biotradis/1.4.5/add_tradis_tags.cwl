class: CommandLineTool
id: add_tradis_tags.cwl
inputs:
- id: add_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- add_tradis_tags
