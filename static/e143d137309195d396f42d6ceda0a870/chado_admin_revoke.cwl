class: CommandLineTool
id: chado_admin_revoke.cwl
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
- id: in_role
  doc: Name of the role/user
  type: string?
  inputBinding:
    prefix: --role
- id: in_schema
  doc: "Database schema (default: all)\n"
  type: string?
  inputBinding:
    prefix: --schema
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chado
- admin
- revoke
