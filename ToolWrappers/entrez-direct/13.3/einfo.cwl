class: CommandLineTool
id: einfo.cwl
inputs:
- id: in_db
  doc: Database name
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_dbs
  doc: Get all database names
  type: boolean?
  inputBinding:
    prefix: -dbs
- id: in_fields
  doc: Print field names
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_links
  doc: Print link names
  type: boolean?
  inputBinding:
    prefix: -links
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- einfo
