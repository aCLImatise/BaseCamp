#!/usr/bin/env cwl-runner

baseCommand:
- dbTrash
class: CommandLineTool
cwlVersion: v1.0
id: dbtrash
inputs:
- doc: hours old to qualify for drop.  N can be a float.
  id: number
  inputBinding:
    prefix: '- number'
  type: string
- doc: the tables, default is merely to display tables.
  id: actually
  inputBinding:
    prefix: '- actually'
  type: string
- doc: if number of tables to drop is greater than limit,
  id: drop_limit
  inputBinding:
    prefix: -dropLimit
  type: string
- doc: to drop all expired tables
  id: default
  inputBinding:
    prefix: '- default'
  type: string
- doc: database to work with, default is customTrash.
  id: specify
  inputBinding:
    prefix: '- Specify'
  type: string
- doc: the table called 'history' for deletion.
  id: history_too
  inputBinding:
    prefix: -historyToo
  type: string
- doc: to leave 'history' alone no matter how old.
  id: default
  inputBinding:
    prefix: '- default'
  type: string
- doc: to the table 'metaInfo' also.
  id: this
  inputBinding:
    prefix: '- this'
  type: string
- doc: '- check extFile for lines that reference files - no longer in trash'
  id: ext_file
  inputBinding:
    prefix: -extFile
  type: boolean
- doc: '- delete lines in extFile that fail file check - otherwise just verbose(2)
    lines that would be deleted'
  id: ext_del
  inputBinding:
    prefix: -extDel
  type: boolean
- doc: '- directory name to prepend to file names in extFile - default is /usr/local/apache/trash
    - file names in extFile are typically: "../trash/ct/..."'
  id: topdir
  inputBinding:
    prefix: -topDir
  type: boolean
- doc: "'show table status' to get size data, very inefficient"
  id: table_status
  inputBinding:
    prefix: -tableStatus
  type: boolean
- doc: that exist but are missing from metaInfo
  id: del_lost_table
  inputBinding:
    prefix: -delLostTable
  type: string
- doc: can be even slower than -tableStatus
  id: this
  inputBinding:
    prefix: '- this'
  type: string
- doc: are many tables to check.
  id: if
  inputBinding:
    prefix: '- if'
  type: string
- doc: '- 2 == show arguments, dates, and dropped tables, - 3 == show date information
    for all tables.'
  id: verbose
  inputBinding:
    prefix: -verbose
  type: string
