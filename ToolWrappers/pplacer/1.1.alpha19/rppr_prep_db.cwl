class: CommandLineTool
id: rppr_prep_db.cwl
inputs:
- id: in_reference_package_path
  doc: Reference package path. Required.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_sqlite
  doc: Specify the database file to use. Required.
  type: boolean?
  inputBinding:
    prefix: --sqlite
- id: in_help
  doc: Display this list of options
  type: boolean?
  inputBinding:
    prefix: --help
- id: in_prep_db
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rppr
- prep_db
