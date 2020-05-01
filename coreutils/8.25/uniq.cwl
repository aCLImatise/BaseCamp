#!/usr/bin/env cwl-runner

baseCommand:
- uniq
class: CommandLineTool
cwlVersion: v1.0
id: uniq
inputs:
- doc: prefix lines by the number of occurrences
  id: count
  inputBinding:
    prefix: --count
  type: boolean
- doc: only print duplicate lines, one for each group
  id: repeated
  inputBinding:
    prefix: --repeated
  type: boolean
- doc: print all duplicate lines
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: '[=METHOD]  like -D, but allow separating groups with an empty line; METHOD={none(default),prepend,separate}'
  id: all_repeated
  inputBinding:
    prefix: --all-repeated
  type: boolean
- doc: avoid comparing the first N fields
  id: skip_fields
  inputBinding:
    prefix: --skip-fields
  type: string
- doc: '[=METHOD]  show all items, separating groups with an empty line; METHOD={separate(default),prepend,append,both}'
  id: group
  inputBinding:
    prefix: --group
  type: boolean
- doc: ignore differences in case when comparing
  id: ignore_case
  inputBinding:
    prefix: --ignore-case
  type: boolean
- doc: avoid comparing the first N characters
  id: skip_chars
  inputBinding:
    prefix: --skip-chars
  type: string
- doc: only print unique lines
  id: unique
  inputBinding:
    prefix: --unique
  type: boolean
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
- doc: compare no more than N characters in lines
  id: check_chars
  inputBinding:
    prefix: --check-chars
  type: string
