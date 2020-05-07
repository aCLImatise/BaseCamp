class: CommandLineTool
id: check_tradis_tags.cwl
inputs:
- id: check_tags
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
- check_tradis_tags
