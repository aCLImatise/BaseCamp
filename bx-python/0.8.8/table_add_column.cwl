#!/usr/bin/env cwl-runner

baseCommand:
- table_add_column.py
class: CommandLineTool
cwlVersion: v1.0
id: table_add_column.py
inputs:
- doc: ':    keep header in output'
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: ':  keep comments in output'
  id: comments
  inputBinding:
    prefix: --comments
  type: boolean
