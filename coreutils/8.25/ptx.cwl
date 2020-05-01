#!/usr/bin/env cwl-runner

baseCommand:
- ptx
class: CommandLineTool
cwlVersion: v1.0
id: ptx
inputs:
- doc: output automatically generated references
  id: auto_reference
  inputBinding:
    prefix: --auto-reference
  type: boolean
- doc: behave more like System V 'ptx'
  id: traditional
  inputBinding:
    prefix: --traditional
  type: boolean
- doc: use STRING for flagging line truncations. The default is '/'
  id: flag_truncation
  inputBinding:
    prefix: --flag-truncation
  type: string
- doc: macro name to use instead of 'xx'
  id: macro_name
  inputBinding:
    prefix: --macro-name
  type: string
- doc: generate output as roff directives
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: put references at right, not counted in -w
  id: right_side_refs
  inputBinding:
    prefix: --right-side-refs
  type: boolean
- doc: for end of lines or end of sentences
  id: sentence_regexp
  inputBinding:
    prefix: --sentence-regexp
  type: string
- doc: generate output as TeX directives
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: use REGEXP to match each keyword
  id: word_regexp
  inputBinding:
    prefix: --word-regexp
  type: string
- doc: word break characters in this FILE
  id: break_file
  inputBinding:
    prefix: --break-file
  type: File
- doc: lower case to upper case for sorting
  id: ignore_case
  inputBinding:
    prefix: --ignore-case
  type: string
- doc: gap size in columns between output fields
  id: gap_size
  inputBinding:
    prefix: --gap-size
  type: string
- doc: read ignore word list from FILE
  id: ignore_file
  inputBinding:
    prefix: --ignore-file
  type: File
- doc: read only word list from this FILE
  id: only_file
  inputBinding:
    prefix: --only-file
  type: File
- doc: field of each line is a reference
  id: references
  inputBinding:
    prefix: --references
  type: string
- doc: output width in columns, reference excluded
  id: typeset_mode
  inputBinding:
    prefix: --typeset-mode
  type: string
