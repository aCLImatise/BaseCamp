#!/usr/bin/env cwl-runner

baseCommand:
- realpath
class: CommandLineTool
cwlVersion: v1.0
id: realpath
inputs:
- doc: all components of the path must exist
  id: canonicalize_existing
  inputBinding:
    prefix: --canonicalize-existing
  type: boolean
- doc: no path components need exist or be a directory
  id: canonicalize_missing
  inputBinding:
    prefix: --canonicalize-missing
  type: boolean
- doc: resolve '..' components before symlinks
  id: logical
  inputBinding:
    prefix: --logical
  type: boolean
- doc: resolve symlinks as encountered (default)
  id: physical
  inputBinding:
    prefix: --physical
  type: boolean
- doc: suppress most error messages
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: print the resolved path relative to FILE
  id: relative_to
  inputBinding:
    prefix: --relative-to
  type: File
- doc: print absolute paths unless paths below FILE
  id: relative_base
  inputBinding:
    prefix: --relative-base
  type: File
- doc: don't expand symlinks
  id: no_symlinks
  inputBinding:
    prefix: --no-symlinks
  type: boolean
- doc: end each output line with NUL, not newline
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean
