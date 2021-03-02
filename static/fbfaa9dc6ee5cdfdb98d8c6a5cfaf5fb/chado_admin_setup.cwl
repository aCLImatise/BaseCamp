class: CommandLineTool
id: chado_admin_setup.cwl
inputs:
- id: in_verbose
  doc: verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_config
  doc: YAML file containing connection details
  type: File?
  inputBinding:
    prefix: --config
- id: in_use_password
  doc: 'connect with password (default: no password)'
  type: boolean?
  inputBinding:
    prefix: --use_password
- id: in_schema
  doc: 'Database schema (default: GMOD schema 1.31)'
  type: string?
  inputBinding:
    prefix: --schema
- id: in_schema_file
  doc: "File with database schema\n"
  type: File?
  inputBinding:
    prefix: --schema_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chado
- admin
- setup
