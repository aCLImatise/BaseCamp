class: CommandLineTool
id: ../../../hgLoadSqlTab.cwl
inputs:
- id: warn
  doc: '- warn instead of abort on mysql errors or warnings'
  type: boolean
  inputBinding:
    prefix: -warn
- id: not_on_server
  doc: '- file is *not* in a directory that the mysql server can see'
  type: boolean
  inputBinding:
    prefix: -notOnServer
- id: old_table
  doc: '- add to existing table'
  type: boolean
  inputBinding:
    prefix: -oldTable
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file_dot_sql
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadSqlTab
