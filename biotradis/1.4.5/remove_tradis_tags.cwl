class: CommandLineTool
id: remove_tradis_tags.cwl
inputs:
- id: remove_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_tradis_tags
