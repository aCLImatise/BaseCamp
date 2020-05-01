#!/usr/bin/env cwl-runner

baseCommand:
- hgTrackDb
class: CommandLineTool
cwlVersion: v1.0
id: hgtrackdb
inputs:
- doc: ''
  id: org
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: database
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: track_db
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: track_db_sql
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: hg_root
  inputBinding:
    position: 4
  type: string
- doc: case of a single directory with a single trackDb.ra file use .
  id: in
  inputBinding:
    prefix: '- in'
  type: string
- doc: 'tree file: src/hg/lib/trackDb.sql'
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: name in the CREATE statement is replaced by the
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: specified on this command line.
  id: table
  inputBinding:
    prefix: '- table'
  type: string
- doc: directory hierarchy use .
  id: for
  inputBinding:
    prefix: '- for'
  type: string
- doc: tables that exist (and complain about missing html files).
  id: strict
  inputBinding:
    prefix: -strict
  type: string
- doc: file name to use other than trackDb.ra
  id: specify
  inputBinding:
    prefix: '- Specify'
  type: string
- doc: '|beta|public - Include trackDb entries with this release tag only.'
  id: release
  inputBinding:
    prefix: -release
  type: string
- doc: scanning, output table name, type line,
  id: settings
  inputBinding:
    prefix: -settings
  type: string
- doc: hash to stderr while loading everything.
  id: and
  inputBinding:
    prefix: '-  and'
  type: string
