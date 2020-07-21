class: CommandLineTool
id: ../../../check_tradis_tags.cwl
inputs:
- id: b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
- id: check_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- check_tradis_tags
