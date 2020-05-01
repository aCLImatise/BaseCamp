#!/usr/bin/env cwl-runner

baseCommand:
- dbiprof
class: CommandLineTool
cwlVersion: v1.0
id: dbiprof
inputs:
- doc: show top N, defaults to 10
  id: number
  inputBinding:
    prefix: -number
  type: string
- doc: sort by S, defaults to total
  id: sort
  inputBinding:
    prefix: -sort
  type: string
- doc: reverse the sort
  id: reverse
  inputBinding:
    prefix: -reverse
  type: boolean
- doc: =V       for filtering, see docs
  id: match
  inputBinding:
    prefix: -match
  type: string
- doc: =V     for filtering, see docs
  id: exclude
  inputBinding:
    prefix: -exclude
  type: string
- doc: for -match and -exclude
  id: case_sensitive
  inputBinding:
    prefix: -case_sensitive
  type: boolean
- doc: rename files before reading then delete afterwards
  id: delete
  inputBinding:
    prefix: -delete
  type: boolean
- doc: print version number and exit
  id: version
  inputBinding:
    prefix: -version
  type: boolean
