#!/usr/bin/env cwl-runner

baseCommand:
- hgLoadBed
class: CommandLineTool
cwlVersion: v1.0
id: hgloadbed
inputs:
- doc: score value is zero, then use column 'colName' to fill in the score column
    (from minScore-1000)
  id: fill_in_score
  inputBinding:
    prefix: -fillInScore
  type: string
- doc: for score field for -fillInScore option (default 100)
  id: min_score
  inputBinding:
    prefix: -minScore
  type: string
- doc: for extra information to STDERR
  id: verbose
  inputBinding:
    prefix: '- verbose'
  type: string
- doc: specified field is a '.' the replace it with -1
  id: dot_is_null
  inputBinding:
    prefix: -dotIsNull
  type: string
- doc: file to this number of lines
  id: line_limit
  inputBinding:
    prefix: -lineLimit
  type: string
