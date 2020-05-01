#!/usr/bin/env cwl-runner

baseCommand:
- hgLoadMaf
class: CommandLineTool
cwlVersion: v1.0
id: hgloadmaf
inputs:
- doc: ''
  id: database
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: table
  inputBinding:
    position: 1
  type: string
- doc: warn instead of error upon empty/incomplete alignments
  id: warn
  inputBinding:
    prefix: -warn
  type: boolean
- doc: warn instead of error, with detail for the warning
  id: warn
  inputBinding:
    prefix: -WARN
  type: boolean
- doc: use infile as input, and suppress loading the database. Just create .tab file
    in current dir.
  id: test
  inputBinding:
    prefix: -test
  type: string
- doc: load files from specified directory  (default /gbdb/database/table.
  id: path_prefix
  inputBinding:
    prefix: -pathPrefix
  type: string
- doc: path to directory for creation of temporary .tab file which will be removed
    after loading
  id: tmpdir
  inputBinding:
    prefix: -tmpDir
  type: File
- doc: use file as input
  id: load_file
  inputBinding:
    prefix: -loadFile
  type: File
- doc: specify max chromosome name length to avoid reference to chromInfo table
  id: max_namelen
  inputBinding:
    prefix: -maxNameLen
  type: string
- doc: file to put default position in default position is first block
  id: def_pos
  inputBinding:
    prefix: -defPos
  type: File
- doc: loading a custom track, don't use history or extFile tables
  id: custom
  inputBinding:
    prefix: -custom
  type: boolean
