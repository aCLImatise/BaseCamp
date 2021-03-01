class: CommandLineTool
id: hgTrackDb.cwl
inputs:
- id: in_strict
  doc: '- only include tables that exist (and complain about missing html files).'
  type: boolean?
  inputBinding:
    prefix: -strict
- id: in_ra_name
  doc: "- Specify a file name to use other than trackDb.ra\nfor the ra files."
  type: File?
  inputBinding:
    prefix: -raName
- id: in_release
  doc: '|beta|public - Include trackDb entries with this release tag only.'
  type: string?
  inputBinding:
    prefix: -release
- id: in_settings
  doc: "- for trackDb scanning, output table name, type line,\n-  and settings hash\
    \ to stderr while loading everything.\n"
  type: boolean?
  inputBinding:
    prefix: -settings
- id: in_track_db
  doc: '- name of table to create, usually trackDb, or trackDb_${USER}'
  type: string
  inputBinding:
    position: 0
- id: in_track_db_dot_sql
  doc: "- SQL definition of the table to create, typically from\n- the source tree\
    \ file: src/hg/lib/trackDb.sql\n- the table name in the CREATE statement is replaced\
    \ by the\n- table name specified on this command line."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hgTrackDb
