#!/usr/bin/env cwl-runner

baseCommand:
- touch
class: CommandLineTool
cwlVersion: v1.0
id: touch
inputs:
- doc: change only the access time
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: do not create any files
  id: no_create
  inputBinding:
    prefix: --no-create
  type: boolean
- doc: parse STRING and use it instead of current time
  id: date
  inputBinding:
    prefix: --date
  type: string
- doc: (ignored)
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: change only the modification time
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: use this file's times instead of current time
  id: reference
  inputBinding:
    prefix: --reference
  type: File
- doc: use [[CC]YY]MMDDhhmm[.ss] instead of current time
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: 'change the specified time: WORD is access, atime, or use: equivalent to -a
    WORD is modify or mtime: equivalent to -m'
  id: time
  inputBinding:
    prefix: --time
  type: string
