class: CommandLineTool
id: ../../../join.cwl
inputs:
- id: also_print_lines
  doc: also print unpairable lines from file FILENUM, where FILENUM is 1 or 2, corresponding
    to FILE1 or FILE2
  type: File
  inputBinding:
    prefix: -a
- id: replace_missing_fields
  doc: replace missing input fields with EMPTY
  type: string
  inputBinding:
    prefix: -e
- id: ignore_case
  doc: ignore differences in case when comparing fields
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: equivalent_to
  doc: equivalent to '-1 FIELD -2 FIELD'
  type: string
  inputBinding:
    prefix: -j
- id: obey_format_constructing
  doc: obey FORMAT while constructing output line
  type: string
  inputBinding:
    prefix: -o
- id: use_char_input
  doc: use CHAR as input and output field separator
  type: string
  inputBinding:
    prefix: -t
- id: filenum_suppress_joined
  doc: like -a FILENUM, but suppress joined output lines
  type: File
  inputBinding:
    prefix: -v
- id: one
  doc: join on this FIELD of file 1
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: join on this FIELD of file 2
  type: string
  inputBinding:
    prefix: '-2'
- id: check_order
  doc: check that the input is correctly sorted, even if all input lines are pairable
  type: boolean
  inputBinding:
    prefix: --check-order
- id: no_check_order
  doc: do not check that the input is correctly sorted
  type: boolean
  inputBinding:
    prefix: --nocheck-order
- id: header
  doc: treat the first line in each file as field headers, print them without trying
    to pair them
  type: boolean
  inputBinding:
    prefix: --header
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- join
