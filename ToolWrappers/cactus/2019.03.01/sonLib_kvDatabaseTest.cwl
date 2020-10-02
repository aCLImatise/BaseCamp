class: CommandLineTool
id: sonLib_kvDatabaseTest.cwl
inputs:
- id: in_type
  doc: "- one of 'KyotoTycoon', 'TokyoCabinet' or 'MySql'.\nValues area case-insensitive,\
    \ defaults to TokyoCabinet."
  type: string
  inputBinding:
    prefix: --type
- id: in_db
  doc: "- database directory for TokyoCabinet or database name\nfor SQL databases.\
    \ Defaults to testTCDatabase for TokyoCabinet,\nSQL databases must specify."
  type: Directory
  inputBinding:
    prefix: --db
- id: in_host
  doc: '- Tycoon or SQL database host, defaults to localhost'
  type: string
  inputBinding:
    prefix: --host
- id: in_port
  doc: '- Tycoon or SQL database port.'
  type: string
  inputBinding:
    prefix: --port
- id: in_user
  doc: '- SQL database user.'
  type: string
  inputBinding:
    prefix: --user
- id: in_pass
  doc: '- SQL database password.'
  type: string
  inputBinding:
    prefix: --pass
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sonLib_kvDatabaseTest
