#!/usr/bin/env cwl-runner

baseCommand:
- chown
class: CommandLineTool
cwlVersion: v1.0
id: chown
inputs:
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
- doc: use RFILE's owner and group rather than specifying OWNER:GROUP values
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
