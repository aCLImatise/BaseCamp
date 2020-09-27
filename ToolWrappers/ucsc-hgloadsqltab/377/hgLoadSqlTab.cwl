class: CommandLineTool
id: hgLoadSqlTab.cwl
inputs:
- id: in_warn
  doc: '- warn instead of abort on mysql errors or warnings'
  type: boolean
  inputBinding:
    prefix: -warn
- id: in_not_on_server
  doc: '- file is *not* in a directory that the mysql server can see'
  type: boolean
  inputBinding:
    prefix: -notOnServer
- id: in_old_table
  doc: '- add to existing table'
  type: boolean
  inputBinding:
    prefix: -oldTable
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file_dot_sql
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hgLoadSqlTab
