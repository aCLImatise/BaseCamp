class: CommandLineTool
id: svdb.cwl
inputs:
- id: in_build
  doc: create a db
  type: boolean?
  inputBinding:
    prefix: --build
- id: in_query
  doc: query a db
  type: boolean?
  inputBinding:
    prefix: --query
- id: in_merge
  doc: merge similar structural variants within a vcf file
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_export
  doc: export a database
  type: boolean?
  inputBinding:
    prefix: --export
- id: in_sv_db_two_dot_four_dot_zero
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svdb
