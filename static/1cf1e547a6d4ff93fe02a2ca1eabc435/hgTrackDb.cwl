class: CommandLineTool
id: hgTrackDb.cwl
inputs:
- id: org
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: track_db
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: track_db_sql
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: hg_root
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in
  doc: case of a single directory with a single trackDb.ra file use .
  type: string
  inputBinding:
    prefix: '- in'
- id: the
  doc: 'tree file: src/hg/lib/trackDb.sql'
  type: string
  inputBinding:
    prefix: '- the'
- id: the
  doc: name in the CREATE statement is replaced by the
  type: string
  inputBinding:
    prefix: '- the'
- id: table
  doc: specified on this command line.
  type: string
  inputBinding:
    prefix: '- table'
- id: for
  doc: directory hierarchy use .
  type: string
  inputBinding:
    prefix: '- for'
- id: strict
  doc: tables that exist (and complain about missing html files).
  type: string
  inputBinding:
    prefix: -strict
- id: specify
  doc: file name to use other than trackDb.ra
  type: string
  inputBinding:
    prefix: '- Specify'
- id: release
  doc: '|beta|public - Include trackDb entries with this release tag only.'
  type: string
  inputBinding:
    prefix: -release
- id: settings
  doc: scanning, output table name, type line,
  type: string
  inputBinding:
    prefix: -settings
- id: and
  doc: hash to stderr while loading everything.
  type: string
  inputBinding:
    prefix: '-  and'
outputs: []
cwlVersion: v1.1
baseCommand:
- hgTrackDb
