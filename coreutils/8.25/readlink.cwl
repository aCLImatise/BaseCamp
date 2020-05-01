#!/usr/bin/env cwl-runner

baseCommand:
- readlink
class: CommandLineTool
cwlVersion: v1.0
id: readlink
inputs:
- doc: canonicalise by following every symlink in every component of the given name
    recursively; all but the last component must exist
  id: canonicalize
  inputBinding:
    prefix: --canonicalize
  type: boolean
- doc: canonicalise by following every symlink in every component of the given name
    recursively, all components must exist
  id: canonicalize_existing
  inputBinding:
    prefix: --canonicalize-existing
  type: boolean
- doc: canonicalize by following every symlink in every component of the given name
    recursively, without requirements on components existence
  id: canonicalize_missing
  inputBinding:
    prefix: --canonicalize-missing
  type: boolean
- doc: do not output the trailing delimiter
  id: no_new_line
  inputBinding:
    prefix: --no-newline
  type: boolean
- doc: suppress most error messages
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: report error messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: end each output line with NUL, not newline
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean
