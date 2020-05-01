#!/usr/bin/env cwl-runner

baseCommand:
- chcon
class: CommandLineTool
cwlVersion: v1.0
id: chcon
inputs:
- doc: affect the referent of each symbolic link (this is the default), rather than
    the symbolic link itself
  id: dereference
  inputBinding:
    prefix: --dereference
  type: boolean
- doc: set user USER in the target security context
  id: user
  inputBinding:
    prefix: --user
  type: string
- doc: set role ROLE in the target security context
  id: role
  inputBinding:
    prefix: --role
  type: string
- doc: set type TYPE in the target security context
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: set range RANGE in the target security context
  id: range
  inputBinding:
    prefix: --range
  type: string
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
- doc: use RFILE's security context rather than specifying a CONTEXT value
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: operate on files and directories recursively
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
- doc: output a diagnostic for every file processed
  id: verbose
  inputBinding:
    prefix: --verbose
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
