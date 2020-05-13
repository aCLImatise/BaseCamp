class: CommandLineTool
id: db_archive.cwl
inputs:
- id: adls_vv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -adlsVv
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- db_archive
