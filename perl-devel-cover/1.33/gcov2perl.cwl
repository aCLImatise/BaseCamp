#!/usr/bin/env cwl-runner

baseCommand:
- gcov2perl
class: CommandLineTool
cwlVersion: v1.0
id: gcov2perl
inputs:
- doc: ''
  id: gcov_files
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ''
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ''
  id: db
  inputBinding:
    prefix: -db
  type: string
