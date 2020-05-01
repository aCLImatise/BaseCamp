#!/usr/bin/env cwl-runner

baseCommand:
- espell
class: CommandLineTool
cwlVersion: v1.0
id: espell
inputs:
- doc: Database name
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: Query string
  id: query
  inputBinding:
    prefix: -query
  type: boolean
