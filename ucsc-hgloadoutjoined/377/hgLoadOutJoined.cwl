#!/usr/bin/env cwl-runner

baseCommand:
- hgLoadOutJoined
class: CommandLineTool
cwlVersion: v1.0
id: hgloadoutjoined
inputs:
- doc: "'t actually load database, just create tab file"
  id: tab_file
  inputBinding:
    prefix: -tabFile
  type: string
- doc: different suffix other than the default (rmskOutBaseline)
  id: table
  inputBinding:
    prefix: -table
  type: string
