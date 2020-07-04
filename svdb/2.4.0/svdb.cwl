class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svdb.cwl
inputs:
- id: build
  doc: create a db
  type: boolean
  inputBinding:
    prefix: --build
- id: query
  doc: query a db
  type: boolean
  inputBinding:
    prefix: --query
- id: merge
  doc: merge similar structural variants within a vcf file
  type: boolean
  inputBinding:
    prefix: --merge
- id: export
  doc: export a database
  type: boolean
  inputBinding:
    prefix: --export
- id: sv_db_two_dot_four_dot_zero
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- svdb
