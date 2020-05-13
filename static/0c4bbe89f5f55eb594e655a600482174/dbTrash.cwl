class: CommandLineTool
id: dbTrash.cwl
inputs:
- id: number
  doc: hours old to qualify for drop.  N can be a float.
  type: string
  inputBinding:
    prefix: '- number'
- id: actually
  doc: the tables, default is merely to display tables.
  type: string
  inputBinding:
    prefix: '- actually'
- id: drop_limit
  doc: if number of tables to drop is greater than limit,
  type: string
  inputBinding:
    prefix: -dropLimit
- id: default
  doc: to drop all expired tables
  type: string
  inputBinding:
    prefix: '- default'
- id: specify
  doc: database to work with, default is customTrash.
  type: string
  inputBinding:
    prefix: '- Specify'
- id: history_too
  doc: the table called 'history' for deletion.
  type: string
  inputBinding:
    prefix: -historyToo
- id: default
  doc: to leave 'history' alone no matter how old.
  type: string
  inputBinding:
    prefix: '- default'
- id: this
  doc: to the table 'metaInfo' also.
  type: string
  inputBinding:
    prefix: '- this'
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
  doc: "'show table status' to get size data, very inefficient"
  type: boolean
  inputBinding:
    prefix: -tableStatus
- id: del_lost_table
  doc: that exist but are missing from metaInfo
  type: string
  inputBinding:
    prefix: -delLostTable
- id: this
  doc: can be even slower than -tableStatus
  type: string
  inputBinding:
    prefix: '- this'
- id: if
  doc: are many tables to check.
  type: string
  inputBinding:
    prefix: '- if'
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
