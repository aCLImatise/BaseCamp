class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/remove_tradis_tags.cwl
inputs:
- id: f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: remove_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_tradis_tags
