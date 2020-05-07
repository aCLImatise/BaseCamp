class: CommandLineTool
id: exclude_uid_lists.cwl
inputs:
- id: batch_size
  doc: merge at most NMERGE inputs at once;
  type: string
  inputBinding:
    prefix: --batch-size
- id: ignore_leading_blanks
  doc: leading blanks
  type: string
  inputBinding:
    prefix: --ignore-leading-blanks
- id: check
  doc: check for sorted input; do not sort
  type: string
  inputBinding:
    prefix: --check
- id: check
  doc: like -c, but do not report first bad line
  type: string
  inputBinding:
    prefix: --check
- id: compress_program
  doc: compress temporaries with PROG;
  type: string
  inputBinding:
    prefix: --compress-program
- id: dictionary_order
  doc: only blanks and alphanumeric characters
  type: string
  inputBinding:
    prefix: --dictionary-order
- id: debug
  doc: annotate the part of the line used to sort, decompress them with PROG -d
  type: boolean
  inputBinding:
    prefix: --debug
- id: ignore_case
  doc: lower case to upper case characters
  type: string
  inputBinding:
    prefix: --ignore-case
- id: files_0_from
  doc: read input from the files specified by for more use temp files
  type: string
  inputBinding:
    prefix: --files0-from
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
- id: key
  doc: sort via a key; KEYDEF gives location and type
  type: string
  inputBinding:
    prefix: --key
- id: merge
  doc: merge already sorted files; do not sort
  type: boolean
  inputBinding:
    prefix: --merge
- id: month_sort
  doc: compare (unknown) < 'JAN' < ... < 'DEC' multiple options specify multiple directories
  type: boolean
  inputBinding:
    prefix: --month-sort
- id: output
  doc: write result to FILE instead of standard output
  type: File
  inputBinding:
    prefix: --output
- id: parallel
  doc: change the number of sorts run concurrently to N
  type: string
  inputBinding:
    prefix: --parallel
- id: random_source
  doc: get random bytes from FILE
  type: File
  inputBinding:
    prefix: --random-source
- id: random_sort
  doc: shuffle, but group identical keys.  See shuf(1)
  type: boolean
  inputBinding:
    prefix: --random-sort
- id: reverse
  doc: reverse the result of comparisons
  type: boolean
  inputBinding:
    prefix: --reverse
- id: buffer_size
  doc: use SIZE for main memory buffer
  type: long
  inputBinding:
    prefix: --buffer-size
- id: sort
  doc: 'sort according to WORD:'
  type: string
  inputBinding:
    prefix: --sort
- id: stable
  doc: stabilize sort by disabling last-resort comparison
  type: boolean
  inputBinding:
    prefix: --stable
- id: field_separator
  doc: use SEP instead of non-blank to blank transition
  type: string
  inputBinding:
    prefix: --field-separator
- id: temporary_directory
  doc: use DIR for temporaries, not $TMPDIR or /tmp;
  type: string
  inputBinding:
    prefix: --temporary-directory
- id: unique
  doc: with -c, check for strict ordering;
  type: boolean
  inputBinding:
    prefix: --unique
- id: version_sort
  doc: natural sort of (version) numbers within text
  type: boolean
  inputBinding:
    prefix: --version-sort
- id: zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
outputs: []
cwlVersion: v1.1
baseCommand:
- exclude-uid-lists
