class: CommandLineTool
id: chado_admin_dump.cwl
inputs:
- id: dbname
  doc: name of the database
  type: string
  inputBinding:
    position: 0
- id: archive
  doc: archive file to be created
  type: string
  inputBinding:
    position: 1
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
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- admin
- dump
