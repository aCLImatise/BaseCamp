class: CommandLineTool
id: chado_execute_audit_backup.cwl
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
- id: date
  doc: date for maximum age of logs to remain in main audit tables, format 'YYYYMMDD'
  type: string
  inputBinding:
    prefix: --date
outputs: []
cwlVersion: v1.1
baseCommand:
- chado
- execute
- audit_backup
