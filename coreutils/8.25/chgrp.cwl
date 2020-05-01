#!/usr/bin/env cwl-runner

baseCommand:
- chgrp
class: CommandLineTool
cwlVersion: v1.0
id: chgrp
inputs:
- doc: like verbose but report only when a change is made
  id: changes
  inputBinding:
    prefix: --changes
  type: boolean
- doc: suppress most error messages
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: output a diagnostic for every file processed
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: affect the referent of each symbolic link (this is the default), rather than
    the symbolic link itself
  id: dereference
  inputBinding:
    prefix: --dereference
  type: boolean
- doc: do not treat '/' specially (the default)
  id: no_preserve_root
  inputBinding:
    prefix: --no-preserve-root
  type: boolean
- doc: fail to operate recursively on '/'
  id: preserve_root
  inputBinding:
    prefix: --preserve-root
  type: boolean
- doc: use RFILE's group rather than specifying a GROUP value
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: operate on files and directories recursively
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: if a command line argument is a symbolic link to a directory, traverse it
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: traverse every symbolic link to a directory encountered
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: do not traverse any symbolic links (default)
  id: p
  inputBinding:
    prefix: -P
  type: boolean
