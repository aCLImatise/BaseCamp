class: CommandLineTool
id: numfmt.cwl
inputs:
- id: in_debug
  doc: print warnings about invalid input
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_delimiter
  doc: use X instead of whitespace for field delimiter
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_field
  doc: "replace the numbers in these input fields (default=1)\nsee FIELDS below"
  type: long?
  inputBinding:
    prefix: --field
- id: in_format
  doc: "use printf style floating-point FORMAT;\nsee FORMAT below for details"
  type: string?
  inputBinding:
    prefix: --format
- id: in_from
  doc: "auto-scale input numbers to UNITs; default is 'none';\nsee UNIT below"
  type: string?
  inputBinding:
    prefix: --from
- id: in_from_unit
  doc: specify the input unit size (instead of the default 1)
  type: long?
  inputBinding:
    prefix: --from-unit
- id: in_grouping
  doc: "use locale-defined grouping of digits, e.g. 1,000,000\n(which means it has\
    \ no effect in the C/POSIX locale)"
  type: boolean?
  inputBinding:
    prefix: --grouping
- id: in_header
  doc: "[=N]     print (without converting) the first N header lines;\nN defaults\
    \ to 1 if not specified"
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_invalid
  doc: "failure mode for invalid numbers: MODE can be:\nabort (default), fail, warn,\
    \ ignore"
  type: string?
  inputBinding:
    prefix: --invalid
- id: in_padding
  doc: "pad the output to N characters; positive N will\nright-align; negative N will\
    \ left-align;\npadding is ignored if the output is wider than N;\nthe default\
    \ is to automatically pad if a whitespace\nis found"
  type: string?
  inputBinding:
    prefix: --padding
- id: in_round
  doc: "use METHOD for rounding when scaling; METHOD can be:\nup, down, from-zero\
    \ (default), towards-zero, nearest"
  type: string?
  inputBinding:
    prefix: --round
- id: in_suffix
  doc: "add SUFFIX to output numbers, and accept optional\nSUFFIX in input numbers"
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_to
  doc: auto-scale output numbers to UNITs; see UNIT below
  type: string?
  inputBinding:
    prefix: --to
- id: in_to_unit
  doc: the output unit size (instead of the default 1)
  type: long?
  inputBinding:
    prefix: --to-unit
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean?
  inputBinding:
    prefix: --zero-terminated
- id: in_first_mth_field
  doc: from first to M'th field (inclusive)
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_none
  doc: no auto-scaling is done; suffixes will trigger an error
  type: string
  inputBinding:
    position: 0
- id: in_auto
  doc: "accept optional single/two letter suffix:\n1K = 1000,\n1Ki = 1024,\n1M = 1000000,\n\
    1Mi = 1048576,"
  type: string
  inputBinding:
    position: 1
- id: in_si
  doc: "accept optional single letter suffix:\n1K = 1000,\n1M = 1000000,\n..."
  type: string
  inputBinding:
    position: 2
- id: in_iec
  doc: "accept optional single letter suffix:\n1K = 1024,\n1M = 1048576,\n..."
  type: string
  inputBinding:
    position: 3
- id: in_iec_i
  doc: "accept optional two-letter suffix:\n1Ki = 1024,\n1Mi = 1048576,\n..."
  type: string
  inputBinding:
    position: 4
- id: in_nth_field_end
  doc: from N'th field, to end of line
  type: string
  inputBinding:
    position: 0
- id: in_n_m
  doc: from N'th to M'th field (inclusive)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- numfmt
