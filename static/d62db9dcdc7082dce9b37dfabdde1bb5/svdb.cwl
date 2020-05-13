class: CommandLineTool
id: svdb.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- svdb
