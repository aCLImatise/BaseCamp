class: CommandLineTool
id: chado_admin_setup.cwl
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
- id: schema
  doc: 'Database schema (default: GMOD schema 1.31)'
  type: string
  inputBinding:
    prefix: --schema
- id: schema_file
  doc: File with database schema
  type: string
  inputBinding:
    prefix: --schema_file
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- admin
- setup
