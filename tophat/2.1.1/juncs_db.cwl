class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/juncs_db.cwl
inputs:
- id: min_anchor
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: read_length
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- juncs_db
