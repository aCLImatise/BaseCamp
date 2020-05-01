#!/usr/bin/env cwl-runner

baseCommand:
- split
class: CommandLineTool
cwlVersion: v1.0
id: split
inputs:
- doc: generate suffixes of length N (default 2)
  id: suffix_length
  inputBinding:
    prefix: --suffix-length
  type: string
- doc: append an additional SUFFIX to file names
  id: additional_suffix
  inputBinding:
    prefix: --additional-suffix
  type: string
- doc: put SIZE bytes per output file
  id: bytes
  inputBinding:
    prefix: --bytes
  type: long
- doc: put at most SIZE bytes of records per output file
  id: line_bytes
  inputBinding:
    prefix: --line-bytes
  type: long
- doc: use numeric suffixes starting at 0, not alphabetic
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[=FROM]  same as -d, but allow setting the start value'
  id: numeric_suffixes
  inputBinding:
    prefix: --numeric-suffixes
  type: boolean
- doc: do not generate empty output files with '-n'
  id: elide_empty_files
  inputBinding:
    prefix: --elide-empty-files
  type: boolean
- doc: write to shell COMMAND; file name is $FILE
  id: filter
  inputBinding:
    prefix: --filter
  type: string
- doc: put NUMBER lines/records per output file
  id: lines
  inputBinding:
    prefix: --lines
  type: string
- doc: generate CHUNKS output files; see explanation below
  id: number
  inputBinding:
    prefix: --number
  type: string
- doc: use SEP instead of newline as the record separator; '\0' (zero) specifies the
    NUL character
  id: separator
  inputBinding:
    prefix: --separator
  type: string
- doc: immediately copy input to output with '-n r/...'
  id: unbuffered
  inputBinding:
    prefix: --unbuffered
  type: boolean
- doc: print a diagnostic just before each output file is opened
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
