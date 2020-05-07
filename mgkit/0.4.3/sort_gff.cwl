class: CommandLineTool
id: sort_gff.sh.cwl
inputs:
- id: ignore_leading_blanks
  doc: leading blanks
  type: string
  inputBinding:
    prefix: --ignore-leading-blanks
- id: dictionary_order
  doc: only blanks and alphanumeric characters
  type: string
  inputBinding:
    prefix: --dictionary-order
- id: ignore_case
  doc: lower case to upper case characters
  type: string
  inputBinding:
    prefix: --ignore-case
- id: general_numeric_sort
  doc: compare according to general numerical value
  type: boolean
  inputBinding:
    prefix: --general-numeric-sort
- id: ignore_non_printing
  doc: consider only printable characters
  type: boolean
  inputBinding:
    prefix: --ignore-nonprinting
- id: month_sort
  doc: compare (unknown) < 'JAN' < ... < 'DEC'
  type: boolean
  inputBinding:
    prefix: --month-sort
- id: numeric_sort
  doc: compare according to string numerical value
  type: boolean
  inputBinding:
    prefix: --numeric-sort
- id: random_sort
  doc: shuffle, but group identical keys.  See shuf(1)
  type: boolean
  inputBinding:
    prefix: --random-sort
- id: random_source
  doc: get random bytes from FILE
  type: File
  inputBinding:
    prefix: --random-source
- id: reverse
  doc: reverse the result of comparisons
  type: boolean
  inputBinding:
    prefix: --reverse
- id: sort
  doc: 'sort according to WORD: general-numeric -g, human-numeric -h, month -M, numeric
    -n, random -R, version -V'
  type: string
  inputBinding:
    prefix: --sort
- id: version_sort
  doc: natural sort of (version) numbers within text
  type: boolean
  inputBinding:
    prefix: --version-sort
- id: parallel
  doc: change the number of sorts run concurrently to N
  type: string
  inputBinding:
    prefix: --parallel
- id: unique
  doc: with -c, check for strict ordering; without -c, output only the first of an
    equal run
  type: boolean
  inputBinding:
    prefix: --unique
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- sort-gff.sh
