#!/usr/bin/env cwl-runner

baseCommand:
- report.pl
class: CommandLineTool
cwlVersion: v1.0
id: report.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: report_pl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: taxprof1
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: merge
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: multiple
  inputBinding:
    position: 4
  type: string
- doc: ''
  id: taxonomy
  inputBinding:
    position: 5
  type: string
- doc: ''
  id: profile
  inputBinding:
    position: 6
  type: string
- doc: ''
  id: files
  inputBinding:
    position: 7
  type: File
- doc: ''
  id: into
  inputBinding:
    position: 8
  type: long
- doc: ''
  id: one
  inputBinding:
    position: 9
  type: string
- doc: ''
  id: table
  inputBinding:
    position: 10
  type: string
