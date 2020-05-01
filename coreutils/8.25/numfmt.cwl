#!/usr/bin/env cwl-runner

baseCommand:
- numfmt
class: CommandLineTool
cwlVersion: v1.0
id: numfmt
inputs:
- doc: no auto-scaling is done; suffixes will trigger an error
  id: none
  inputBinding:
    position: 0
  type: string
- doc: 'accept optional single/two letter suffix: 1K = 1000, 1Ki = 1024, 1M = 1000000,
    1Mi = 1048576,'
  id: auto
  inputBinding:
    position: 1
  type: string
- doc: 'accept optional single letter suffix: 1K = 1000, 1M = 1000000, ...'
  id: si
  inputBinding:
    position: 2
  type: string
- doc: 'accept optional single letter suffix: 1K = 1024, 1M = 1048576, ...'
  id: iec
  inputBinding:
    position: 3
  type: string
- doc: 'accept optional two-letter suffix: 1Ki = 1024, 1Mi = 1048576, ...'
  id: iec_i
  inputBinding:
    position: 4
  type: string
- doc: print warnings about invalid input
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: use X instead of whitespace for field delimiter
  id: delimiter
  inputBinding:
    prefix: --delimiter
  type: string
- doc: replace the numbers in these input fields (default=1) see FIELDS below
  id: field
  inputBinding:
    prefix: --field
  type: string
- doc: use printf style floating-point FORMAT; see FORMAT below for details
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: auto-scale input numbers to UNITs; default is 'none'; see UNIT below
  id: from
  inputBinding:
    prefix: --from
  type: string
- doc: specify the input unit size (instead of the default 1)
  id: from_unit
  inputBinding:
    prefix: --from-unit
  type: string
- doc: use locale-defined grouping of digits, e.g. 1,000,000 (which means it has no
    effect in the C/POSIX locale)
  id: grouping
  inputBinding:
    prefix: --grouping
  type: boolean
- doc: '[=N]     print (without converting) the first N header lines; N defaults to
    1 if not specified'
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: 'failure mode for invalid numbers: MODE can be: abort (default), fail, warn,
    ignore'
  id: invalid
  inputBinding:
    prefix: --invalid
  type: string
- doc: pad the output to N characters; positive N will right-align; negative N will
    left-align; padding is ignored if the output is wider than N; the default is to
    automatically pad if a whitespace is found
  id: padding
  inputBinding:
    prefix: --padding
  type: string
- doc: 'use METHOD for rounding when scaling; METHOD can be: up, down, from-zero (default),
    towards-zero, nearest'
  id: round
  inputBinding:
    prefix: --round
  type: string
- doc: add SUFFIX to output numbers, and accept optional SUFFIX in input numbers
  id: suffix
  inputBinding:
    prefix: --suffix
  type: string
- doc: auto-scale output numbers to UNITs; see UNIT below
  id: to
  inputBinding:
    prefix: --to
  type: string
- doc: the output unit size (instead of the default 1)
  id: to_unit
  inputBinding:
    prefix: --to-unit
  type: string
- doc: line delimiter is NUL, not newline
  id: zero_terminated
  inputBinding:
    prefix: --zero-terminated
  type: boolean
