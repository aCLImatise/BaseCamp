#!/usr/bin/env cwl-runner

baseCommand:
- gof3r
class: CommandLineTool
cwlVersion: v1.0
id: gof3r
inputs:
- doc: 'copy S3 objects (aliases: copy)'
  id: cp
  inputBinding:
    position: 0
  type: string
- doc: download from S3
  id: get
  inputBinding:
    position: 1
  type: string
- doc: upload to S3
  id: put
  inputBinding:
    position: 2
  type: string
- doc: delete from S3
  id: rm
  inputBinding:
    position: 3
  type: string
- doc: Create gof3r.man man page in current directory
  id: man_page
  inputBinding:
    prefix: --manpage
  type: boolean
- doc: Write .gof3r.ini in current user's home directory
  id: write_ini
  inputBinding:
    prefix: --writeini
  type: boolean
