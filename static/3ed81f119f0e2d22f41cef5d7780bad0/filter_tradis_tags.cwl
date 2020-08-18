class: CommandLineTool
id: ../../../filter_tradis_tags.cwl
inputs:
- id: b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: filter_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_tradis_tags
