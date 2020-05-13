class: CommandLineTool
id: numfmt.cwl
inputs:
- id: none
  doc: no auto-scaling is done; suffixes will trigger an error
  type: string
  inputBinding:
    position: 0
- id: auto
  doc: 'accept optional single/two letter suffix: 1K = 1000, 1Ki = 1024, 1M = 1000000,
    1Mi = 1048576,'
  type: string
  inputBinding:
    position: 1
- id: si
  doc: 'accept optional single letter suffix: 1K = 1000, 1M = 1000000, ...'
  type: string
  inputBinding:
    position: 2
- id: iec
  doc: 'accept optional single letter suffix: 1K = 1024, 1M = 1048576, ...'
  type: string
  inputBinding:
    position: 3
- id: iec_i
  doc: 'accept optional two-letter suffix: 1Ki = 1024, 1Mi = 1048576, ...'
  type: string
  inputBinding:
    position: 4
- id: debug
  doc: print warnings about invalid input
  type: boolean
  inputBinding:
    prefix: --debug
- id: delimiter
  doc: use X instead of whitespace for field delimiter
  type: string
  inputBinding:
    prefix: --delimiter
- id: field
  doc: replace the numbers in these input fields (default=1) see FIELDS below
  type: string
  inputBinding:
    prefix: --field
- id: format
  doc: use printf style floating-point FORMAT; see FORMAT below for details
  type: string
  inputBinding:
    prefix: --format
- id: from
  doc: auto-scale input numbers to UNITs; default is 'none'; see UNIT below
  type: string
  inputBinding:
    prefix: --from
- id: from_unit
  doc: specify the input unit size (instead of the default 1)
  type: string
  inputBinding:
    prefix: --from-unit
- id: grouping
  doc: use locale-defined grouping of digits, e.g. 1,000,000 (which means it has no
    effect in the C/POSIX locale)
  type: boolean
  inputBinding:
    prefix: --grouping
- id: header
  doc: '[=N]     print (without converting) the first N header lines; N defaults to
    1 if not specified'
  type: boolean
  inputBinding:
    prefix: --header
- id: invalid
  doc: 'failure mode for invalid numbers: MODE can be: abort (default), fail, warn,
    ignore'
  type: string
  inputBinding:
    prefix: --invalid
- id: padding
  doc: pad the output to N characters; positive N will right-align; negative N will
    left-align; padding is ignored if the output is wider than N; the default is to
    automatically pad if a whitespace is found
  type: string
  inputBinding:
    prefix: --padding
- id: round
  doc: 'use METHOD for rounding when scaling; METHOD can be: up, down, from-zero (default),
    towards-zero, nearest'
  type: string
  inputBinding:
    prefix: --round
- id: suffix
  doc: add SUFFIX to output numbers, and accept optional SUFFIX in input numbers
  type: string
  inputBinding:
    prefix: --suffix
- id: to
  doc: auto-scale output numbers to UNITs; see UNIT below
  type: string
  inputBinding:
    prefix: --to
- id: to_unit
  doc: the output unit size (instead of the default 1)
  type: string
  inputBinding:
    prefix: --to-unit
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- numfmt
