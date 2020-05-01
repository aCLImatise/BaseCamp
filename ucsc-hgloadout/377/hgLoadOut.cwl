#!/usr/bin/env cwl-runner

baseCommand:
- hgLoadOut
class: CommandLineTool
cwlVersion: v1.0
id: hgloadout
inputs:
- doc: "'t actually load database, just create tab file"
  id: tab_file
  inputBinding:
    prefix: -tabFile
  type: string
- doc: separate tables even if a single file is given
  id: split
  inputBinding:
    prefix: -split
  type: string
- doc: different suffix other than the default (rmsk)
  id: table
  inputBinding:
    prefix: -table
  type: string
