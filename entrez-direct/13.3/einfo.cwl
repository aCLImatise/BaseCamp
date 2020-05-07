class: CommandLineTool
id: einfo.cwl
inputs:
- id: db
  doc: Database name
  type: boolean
  inputBinding:
    prefix: -db
- id: dbs
  doc: Get all database names
  type: boolean
  inputBinding:
    prefix: -dbs
- id: fields
  doc: Print field names
  type: boolean
  inputBinding:
    prefix: -fields
- id: links
  doc: Print link names
  type: boolean
  inputBinding:
    prefix: -links
outputs: []
cwlVersion: v1.1
baseCommand:
- einfo
