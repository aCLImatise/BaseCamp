#!/usr/bin/env cwl-runner

baseCommand:
- tdbQuery
class: CommandLineTool
cwlVersion: v1.0
id: tdbquery
inputs:
- doc: ''
  id: sql_statement
  inputBinding:
    position: 0
  type: string
- doc: =/path/to/trackDb/root/dir
  id: root
  inputBinding:
    prefix: -root
  type: boolean
- doc: '|beta|public'
  id: release
  inputBinding:
    prefix: -release
  type: string
