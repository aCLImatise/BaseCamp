#!/usr/bin/env cwl-runner

baseCommand:
- hgLoadSqlTab
class: CommandLineTool
cwlVersion: v1.0
id: hgloadsqltab
inputs:
- doc: of abort on mysql errors or warnings
  id: warn
  inputBinding:
    prefix: '- warn'
  type: string
- doc: '*not* in a directory that the mysql server can see'
  id: not_on_server
  inputBinding:
    prefix: -notOnServer
  type: string
- doc: existing table
  id: old_table
  inputBinding:
    prefix: -oldTable
  type: string
