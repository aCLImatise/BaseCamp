class: CommandLineTool
id: dbTrash.cwl
inputs:
- id: in_age
  doc: '- number of hours old to qualify for drop.  N can be a float.'
  type: double
  inputBinding:
    prefix: -age
- id: in_drop
  doc: '- actually drop the tables, default is merely to display tables.'
  type: boolean
  inputBinding:
    prefix: -drop
- id: in_drop_limit
  doc: "- ERROR out if number of tables to drop is greater than limit,\n- default\
    \ is to drop all expired tables"
  type: long
  inputBinding:
    prefix: -dropLimit
- id: in_db
  doc: '- Specify a database to work with, default is customTrash.'
  type: string
  inputBinding:
    prefix: -db
- id: in_history_too
  doc: "- also consider the table called 'history' for deletion.\n- default is to\
    \ leave 'history' alone no matter how old.\n- this applies to the table 'metaInfo'\
    \ also."
  type: boolean
  inputBinding:
    prefix: -historyToo
- id: in_ext_file
  doc: "- check extFile for lines that reference files\n- no longer in trash"
  type: boolean
  inputBinding:
    prefix: -extFile
- id: in_ext_del
  doc: "- delete lines in extFile that fail file check\n- otherwise just verbose(2)\
    \ lines that would be deleted"
  type: boolean
  inputBinding:
    prefix: -extDel
- id: in_topdir
  doc: "- directory name to prepend to file names in extFile\n- default is /usr/local/apache/trash\n\
    - file names in extFile are typically: \"../trash/ct/...\""
  type: boolean
  inputBinding:
    prefix: -topDir
- id: in_table_status
  doc: "- use 'show table status' to get size data, very inefficient"
  type: boolean
  inputBinding:
    prefix: -tableStatus
- id: in_del_lost_table
  doc: "- delete tables that exist but are missing from metaInfo\n- this operation\
    \ can be even slower than -tableStatus\n- if there are many tables to check."
  type: boolean
  inputBinding:
    prefix: -delLostTable
- id: in_verbose
  doc: "- 2 == show arguments, dates, and dropped tables,\n- 3 == show date information\
    \ for all tables.\n"
  type: long
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dbTrash
