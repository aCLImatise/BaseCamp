class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dbTrash.cwl
inputs:
- id: age
  doc: '- number of hours old to qualify for drop.  N can be a float.'
  type: string
  inputBinding:
    prefix: -age
- id: drop
  doc: '- actually drop the tables, default is merely to display tables.'
  type: boolean
  inputBinding:
    prefix: -drop
- id: drop_limit
  doc: '- ERROR out if number of tables to drop is greater than limit, - default is
    to drop all expired tables'
  type: string
  inputBinding:
    prefix: -dropLimit
- id: db
  doc: '- Specify a database to work with, default is customTrash.'
  type: string
  inputBinding:
    prefix: -db
- id: history_too
  doc: "- also consider the table called 'history' for deletion. - default is to leave\
    \ 'history' alone no matter how old. - this applies to the table 'metaInfo' also."
  type: boolean
  inputBinding:
    prefix: -historyToo
- id: ext_file
  doc: '- check extFile for lines that reference files - no longer in trash'
  type: boolean
  inputBinding:
    prefix: -extFile
- id: ext_del
  doc: '- delete lines in extFile that fail file check - otherwise just verbose(2)
    lines that would be deleted'
  type: boolean
  inputBinding:
    prefix: -extDel
- id: topdir
  doc: '- directory name to prepend to file names in extFile - default is /usr/local/apache/trash
    - file names in extFile are typically: "../trash/ct/..."'
  type: boolean
  inputBinding:
    prefix: -topDir
- id: table_status
  doc: "- use 'show table status' to get size data, very inefficient"
  type: boolean
  inputBinding:
    prefix: -tableStatus
- id: del_lost_table
  doc: '- delete tables that exist but are missing from metaInfo - this operation
    can be even slower than -tableStatus - if there are many tables to check.'
  type: boolean
  inputBinding:
    prefix: -delLostTable
- id: verbose
  doc: '- 2 == show arguments, dates, and dropped tables, - 3 == show date information
    for all tables.'
  type: string
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- dbTrash
