class: CommandLineTool
id: chado_admin_revoke.cwl
inputs:
- id: dbname
  doc: name of the database
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: config
  doc: YAML file containing connection details
  type: string
  inputBinding:
    prefix: --config
- id: use_password
  doc: 'connect with password (default: no password)'
  type: boolean
  inputBinding:
    prefix: --use_password
- id: role
  doc: Name of the role/user
  type: string
  inputBinding:
    prefix: --role
- id: schema
  doc: 'Database schema (default: all)'
  type: string
  inputBinding:
    prefix: --schema
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- admin
- revoke
