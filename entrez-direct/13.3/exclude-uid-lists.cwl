#!/usr/bin/env cwl-runner

baseCommand:
- exclude-uid-lists
class: CommandLineTool
cwlVersion: v1.0
id: exclude-uid-lists
inputs:
- doc: merge at most NMERGE inputs at once;
  id: batch_size
  inputBinding:
    prefix: --batch-size
  type: string
- doc: leading blanks
  id: ignore_leading_blanks
  inputBinding:
    prefix: --ignore-leading-blanks
  type: string
- doc: check for sorted input; do not sort
  id: check
  inputBinding:
    prefix: --check
  type: string
- doc: like -c, but do not report first bad line
  id: check
  inputBinding:
    prefix: --check
  type: string
- doc: compress temporaries with PROG;
  id: compress_program
  inputBinding:
    prefix: --compress-program
  type: string
- doc: only blanks and alphanumeric characters
  id: dictionary_order
  inputBinding:
    prefix: --dictionary-order
  type: string
- doc: annotate the part of the line used to sort, decompress them with PROG -d
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: lower case to upper case characters
  id: ignore_case
  inputBinding:
    prefix: --ignore-case
  type: string
- doc: read input from the files specified by for more use temp files
  id: files_0_from
  inputBinding:
    prefix: --files0-from
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
- doc: sort via a key; KEYDEF gives location and type
  id: key
  inputBinding:
    prefix: --key
  type: string
- doc: merge already sorted files; do not sort
  id: merge
  inputBinding:
    prefix: --merge
  type: boolean
- doc: compare (unknown) < 'JAN' < ... < 'DEC' multiple options specify multiple directories
  id: month_sort
  inputBinding:
    prefix: --month-sort
  type: boolean
- doc: write result to FILE instead of standard output
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: change the number of sorts run concurrently to N
  id: parallel
  inputBinding:
    prefix: --parallel
  type: string
- doc: get random bytes from FILE
  id: random_source
  inputBinding:
    prefix: --random-source
  type: File
- doc: shuffle, but group identical keys.  See shuf(1)
  id: random_sort
  inputBinding:
    prefix: --random-sort
  type: boolean
- doc: reverse the result of comparisons
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: use SIZE for main memory buffer
  id: buffer_size
  inputBinding:
    prefix: --buffer-size
  type: long
- doc: 'sort according to WORD:'
  id: sort
  inputBinding:
    prefix: --sort
  type: string
- doc: stabilize sort by disabling last-resort comparison
  id: stable
  inputBinding:
    prefix: --stable
  type: boolean
- doc: use SEP instead of non-blank to blank transition
  id: field_separator
  inputBinding:
    prefix: --field-separator
  type: string
- doc: use DIR for temporaries, not $TMPDIR or /tmp;
  id: temporary_directory
  inputBinding:
    prefix: --temporary-directory
  type: string
- doc: with -c, check for strict ordering;
  id: unique
  inputBinding:
    prefix: --unique
  type: boolean
- doc: natural sort of (version) numbers within text
  id: version_sort
  inputBinding:
    prefix: --version-sort
  type: boolean
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
