#!/usr/bin/env cwl-runner

baseCommand:
- bed2pos.pl
class: CommandLineTool
cwlVersion: v1.0
id: bed2pos.pl
inputs:
- doc: (Checks if the file is already peak/pos formatted)
  id: check
  inputBinding:
    prefix: -check
  type: boolean
- doc: (Make peaks names unique by adding numbers to replicate names)
  id: unique
  inputBinding:
    prefix: -unique
  type: boolean
- doc: '(Send output to this file, default: stdout)'
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: (Send output to file with same name as input file with *.pos extension)
  id: pos
  inputBinding:
    prefix: -pos
  type: boolean
