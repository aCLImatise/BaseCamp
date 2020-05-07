class: CommandLineTool
id: datamash.cwl
inputs:
- id: full
  doc: 'print entire input line before op results (default: print only the grouped
    keys)'
  type: boolean
  inputBinding:
    prefix: --full
- id: group
  doc: "[,Y,Z]       group via fields X,[Y,Z]; equivalent to primary operation 'groupby'"
  type: string
  inputBinding:
    prefix: --group
- id: header_in
  doc: first input line is column headers
  type: boolean
  inputBinding:
    prefix: --header-in
- id: header_out
  doc: print column headers as first line
  type: boolean
  inputBinding:
    prefix: --header-out
- id: headers
  doc: same as '--header-in --header-out'
  type: boolean
  inputBinding:
    prefix: --headers
- id: ignore_case
  doc: ignore upper/lower case when comparing text; this affects grouping, and string
    operations
  type: boolean
  inputBinding:
    prefix: --ignore-case
- id: sort
  doc: sort the input before grouping; this removes the need to manually pipe the
    input through 'sort'
  type: boolean
  inputBinding:
    prefix: --sort
- id: no_strict
  doc: allow lines with varying number of fields
  type: boolean
  inputBinding:
    prefix: --no-strict
- id: filler
  doc: fill missing values with X (default %s)
  type: string
  inputBinding:
    prefix: --filler
- id: field_separator
  doc: use X instead of TAB as field delimiter
  type: string
  inputBinding:
    prefix: --field-separator
- id: narm
  doc: skip NA/NaN values
  type: boolean
  inputBinding:
    prefix: --narm
- id: whitespace
  doc: use whitespace (one or more spaces and/or tabs) for field delimiters
  type: boolean
  inputBinding:
    prefix: --whitespace
- id: zero_terminated
  doc: end lines with 0 byte, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- datamash
