#!/usr/bin/env cwl-runner

baseCommand:
- einfo
class: CommandLineTool
cwlVersion: v1.0
id: einfo
inputs:
- doc: Database name
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: Get all database names
  id: dbs
  inputBinding:
    prefix: -dbs
  type: boolean
- doc: Print field names
  id: fields
  inputBinding:
    prefix: -fields
  type: boolean
- doc: Print link names
  id: links
  inputBinding:
    prefix: -links
  type: boolean
