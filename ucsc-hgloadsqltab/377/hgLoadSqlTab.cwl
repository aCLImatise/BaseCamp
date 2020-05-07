class: CommandLineTool
id: hgLoadSqlTab.cwl
inputs:
- id: warn
  doc: of abort on mysql errors or warnings
  type: string
  inputBinding:
    prefix: '- warn'
- id: not_on_server
  doc: '*not* in a directory that the mysql server can see'
  type: string
  inputBinding:
    prefix: -notOnServer
- id: old_table
  doc: existing table
  type: string
  inputBinding:
    prefix: -oldTable
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadSqlTab
