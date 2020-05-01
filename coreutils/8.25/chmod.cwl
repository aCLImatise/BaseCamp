#!/usr/bin/env cwl-runner

baseCommand:
- chmod
class: CommandLineTool
cwlVersion: v1.0
id: chmod
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
- doc: use RFILE's mode instead of MODE values
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: change files and directories recursively
  id: recursive
  inputBinding:
    prefix: --recursive
  type: boolean
