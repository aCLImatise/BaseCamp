#!/usr/bin/env cwl-runner

baseCommand:
- sort
class: CommandLineTool
cwlVersion: v1.0
id: sort
inputs:
- doc: leading blanks
  id: ignore_leading_blanks
  inputBinding:
    prefix: --ignore-leading-blanks
  type: string
- doc: only blanks and alphanumeric characters
  id: dictionary_order
  inputBinding:
    prefix: --dictionary-order
  type: string
- doc: lower case to upper case characters
  id: ignore_case
  inputBinding:
    prefix: --ignore-case
  type: string
- doc: compare according to general numerical value
  id: general_numeric_sort
  inputBinding:
    prefix: --general-numeric-sort
  type: boolean
- doc: consider only printable characters
  id: ignore_non_printing
  inputBinding:
    prefix: --ignore-nonprinting
  type: boolean
- doc: compare (unknown) < 'JAN' < ... < 'DEC'
  id: month_sort
  inputBinding:
    prefix: --month-sort
  type: boolean
- doc: compare according to string numerical value
  id: numeric_sort
  inputBinding:
    prefix: --numeric-sort
  type: boolean
- doc: shuffle, but group identical keys.  See shuf(1)
  id: random_sort
  inputBinding:
    prefix: --random-sort
  type: boolean
- doc: get random bytes from FILE
  id: random_source
  inputBinding:
    prefix: --random-source
  type: File
- doc: reverse the result of comparisons
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: 'sort according to WORD: general-numeric -g, human-numeric -h, month -M, numeric
    -n, random -R, version -V'
  id: sort
  inputBinding:
    prefix: --sort
  type: string
- doc: natural sort of (version) numbers within text
  id: version_sort
  inputBinding:
    prefix: --version-sort
  type: boolean
- doc: change the number of sorts run concurrently to N
  id: parallel
  inputBinding:
    prefix: --parallel
  type: string
- doc: with -c, check for strict ordering; without -c, output only the first of an
    equal run
  id: unique
  inputBinding:
    prefix: --unique
  type: boolean
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
