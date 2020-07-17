class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sql.cwl
inputs:
- id: db_url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sqlcommand
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- sql
