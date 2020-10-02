class: CommandLineTool
id: chado_admin_create.cwl
inputs:
- id: in_verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_config
  doc: YAML file containing connection details
  type: File
  inputBinding:
    prefix: --config
- id: in_use_password
  doc: 'connect with password (default: no password)'
  type: boolean
  inputBinding:
    prefix: --use_password
- id: in_dbname
  doc: name of the database
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chado
- admin
- create
