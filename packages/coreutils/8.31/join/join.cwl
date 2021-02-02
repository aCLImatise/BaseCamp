class: CommandLineTool
id: join.cwl
inputs:
- id: in_also_print_lines
  doc: "also print unpairable lines from file FILENUM, where\nFILENUM is 1 or 2, corresponding\
    \ to FILE1 or FILE2"
  type: File
  inputBinding:
    prefix: -a
- id: in_replace_missing_fields
  doc: replace missing input fields with EMPTY
  type: string
  inputBinding:
    prefix: -e
- id: in_ignore_case
  doc: ignore differences in case when comparing fields
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: in_equivalent_to
  doc: equivalent to '-1 FIELD -2 FIELD'
  type: long
  inputBinding:
    prefix: -j
- id: in_obey_format_constructing
  doc: obey FORMAT while constructing output line
  type: string
  inputBinding:
    prefix: -o
- id: in_use_char_input
  doc: use CHAR as input and output field separator
  type: string
  inputBinding:
    prefix: -t
- id: in_filenum_suppress_joined
  doc: like -a FILENUM, but suppress joined output lines
  type: string
  inputBinding:
    prefix: -v
- id: in_one
  doc: join on this FIELD of file 1
  type: long
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: join on this FIELD of file 2
  type: long
  inputBinding:
    prefix: '-2'
- id: in_check_order
  doc: "check that the input is correctly sorted, even\nif all input lines are pairable"
  type: boolean
  inputBinding:
    prefix: --check-order
- id: in_no_check_order
  doc: do not check that the input is correctly sorted
  type: boolean
  inputBinding:
    prefix: --nocheck-order
- id: in_header
  doc: "treat the first line in each file as field headers,\nprint them without trying\
    \ to pair them"
  type: boolean
  inputBinding:
    prefix: --header
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- join
