#!/usr/bin/env cwl-runner

baseCommand:
- csplit
class: CommandLineTool
cwlVersion: v1.0
id: csplit
inputs:
- doc: use sprintf FORMAT instead of %02d
  id: suffix_format
  inputBinding:
    prefix: --suffix-format
  type: string
- doc: use PREFIX instead of 'xx'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: do not remove output files on errors
  id: keep_files
  inputBinding:
    prefix: --keep-files
  type: boolean
- doc: suppress the lines matching PATTERN
  id: suppress_matched
  inputBinding:
    prefix: --suppress-matched
  type: boolean
- doc: use specified number of digits instead of 2
  id: digits
  inputBinding:
    prefix: --digits
  type: string
- doc: not print counts of output file sizes
  id: silent
  inputBinding:
    prefix: --silent
  type: string
- doc: empty output files
  id: elide_empty_files
  inputBinding:
    prefix: --elide-empty-files
  type: string
