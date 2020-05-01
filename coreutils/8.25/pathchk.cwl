#!/usr/bin/env cwl-runner

baseCommand:
- pathchk
class: CommandLineTool
cwlVersion: v1.0
id: pathchk
inputs:
- doc: check for most POSIX systems
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: check for empty names and leading "-"
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: check for all POSIX systems (equivalent to -p -P)
  id: portability
  inputBinding:
    prefix: --portability
  type: boolean
