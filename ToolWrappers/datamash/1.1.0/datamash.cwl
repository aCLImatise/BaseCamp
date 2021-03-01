class: CommandLineTool
id: datamash.cwl
inputs:
- id: in_full
  doc: "print entire input line before op results\n(default: print only the grouped\
    \ keys)"
  type: boolean?
  inputBinding:
    prefix: --full
- id: in_group
  doc: "[,Y,Z]       group via fields X,[Y,Z];\nequivalent to primary operation 'groupby'"
  type: string?
  inputBinding:
    prefix: --group
- id: in_header_in
  doc: first input line is column headers
  type: boolean?
  inputBinding:
    prefix: --header-in
- id: in_header_out
  doc: print column headers as first line
  type: boolean?
  inputBinding:
    prefix: --header-out
- id: in_headers
  doc: same as '--header-in --header-out'
  type: boolean?
  inputBinding:
    prefix: --headers
- id: in_ignore_case
  doc: "ignore upper/lower case when comparing text;\nthis affects grouping, and string\
    \ operations"
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_sort
  doc: "sort the input before grouping; this removes the\nneed to manually pipe the\
    \ input through 'sort'"
  type: boolean?
  inputBinding:
    prefix: --sort
- id: in_no_strict
  doc: allow lines with varying number of fields
  type: boolean?
  inputBinding:
    prefix: --no-strict
- id: in_filler
  doc: fill missing values with X (default %s)
  type: string?
  inputBinding:
    prefix: --filler
- id: in_field_separator
  doc: use X instead of TAB as field delimiter
  type: string?
  inputBinding:
    prefix: --field-separator
- id: in_narm
  doc: skip NA/NaN values
  type: boolean?
  inputBinding:
    prefix: --narm
- id: in_whitespace
  doc: "use whitespace (one or more spaces and/or tabs)\nfor field delimiters"
  type: boolean?
  inputBinding:
    prefix: --whitespace
- id: in_zero_terminated
  doc: end lines with 0 byte, not newline
  type: boolean?
  inputBinding:
    prefix: --zero-terminated
- id: in_op
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fld
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- datamash
