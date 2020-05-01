#!/usr/bin/env cwl-runner

baseCommand:
- table_filter.py
class: CommandLineTool
cwlVersion: v1.0
id: table_filter.py
inputs:
- doc: keep header in output
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: keep comments in output
  id: comments
  inputBinding:
    prefix: --comments
  type: boolean
- doc: assume the first line is a header even if it does not start with "#"
  id: force_header
  inputBinding:
    prefix: --force-header
  type: boolean
- doc: names or indexes of columns to keep
  id: cols
  inputBinding:
    prefix: --cols
  type: string
