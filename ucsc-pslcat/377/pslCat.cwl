#!/usr/bin/env cwl-runner

baseCommand:
- pslCat
class: CommandLineTool
cwlVersion: v1.0
id: pslcat
inputs:
- doc: input.  Detects more errors but slower
  id: check
  inputBinding:
    prefix: -check
  type: string
- doc: psl header
  id: no_head
  inputBinding:
    prefix: -nohead
  type: string
- doc: files are directories (concatenate all in dirs)
  id: dir
  inputBinding:
    prefix: -dir
  type: boolean
- doc: put output to file rather than stdout
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: =.xxx  limit files in directories to those with extension
  id: ext
  inputBinding:
    prefix: -ext
  type: boolean
