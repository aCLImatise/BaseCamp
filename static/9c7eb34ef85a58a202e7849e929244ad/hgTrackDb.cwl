class: CommandLineTool
id: ../../../hgTrackDb.cwl
inputs:
- id: release
  doc: '|beta|public - Include trackDb entries with this release tag only.'
  type: string
  inputBinding:
    prefix: -release
- id: settings
  doc: '- for trackDb scanning, output table name, type line, -  and settings hash
    to stderr while loading everything.'
  type: boolean
  inputBinding:
    prefix: -settings
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
- id: track_db_dot_sql
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: hg_root
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- hgTrackDb
