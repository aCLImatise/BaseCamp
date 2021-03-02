class: CommandLineTool
id: sort.cwl
inputs:
- id: in_ignore_leading_blanks
  doc: ignore leading blanks
  type: boolean?
  inputBinding:
    prefix: --ignore-leading-blanks
- id: in_dictionary_order
  doc: consider only blanks and alphanumeric characters
  type: boolean?
  inputBinding:
    prefix: --dictionary-order
- id: in_ignore_case
  doc: fold lower case to upper case characters
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_general_numeric_sort
  doc: compare according to general numerical value
  type: boolean?
  inputBinding:
    prefix: --general-numeric-sort
- id: in_ignore_non_printing
  doc: consider only printable characters
  type: boolean?
  inputBinding:
    prefix: --ignore-nonprinting
- id: in_month_sort
  doc: compare (unknown) < 'JAN' < ... < 'DEC'
  type: boolean?
  inputBinding:
    prefix: --month-sort
- id: in_numeric_sort
  doc: compare according to string numerical value
  type: boolean?
  inputBinding:
    prefix: --numeric-sort
- id: in_random_sort
  doc: shuffle, but group identical keys.  See shuf(1)
  type: boolean?
  inputBinding:
    prefix: --random-sort
- id: in_random_source
  doc: get random bytes from FILE
  type: File?
  inputBinding:
    prefix: --random-source
- id: in_reverse
  doc: reverse the result of comparisons
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_sort
  doc: "sort according to WORD:\ngeneral-numeric -g, human-numeric -h, month -M,\n\
    numeric -n, random -R, version -V"
  type: string?
  inputBinding:
    prefix: --sort
- id: in_version_sort
  doc: natural sort of (version) numbers within text
  type: boolean?
  inputBinding:
    prefix: --version-sort
- id: in_batch_size
  doc: "merge at most NMERGE inputs at once;\nfor more use temp files"
  type: long?
  inputBinding:
    prefix: --batch-size
- id: in_compress_program
  doc: "compress temporaries with PROG;\ndecompress them with PROG -d"
  type: string?
  inputBinding:
    prefix: --compress-program
- id: in_debug
  doc: "annotate the part of the line used to sort,\nand warn about questionable usage\
    \ to stderr"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_files_zero_from
  doc: "read input from the files specified by\nNUL-terminated names in file F;\n\
    If F is - then read names from standard input"
  type: long?
  inputBinding:
    prefix: --files0-from
- id: in_key
  doc: sort via a key; KEYDEF gives location and type
  type: string?
  inputBinding:
    prefix: --key
- id: in_merge
  doc: merge already sorted files; do not sort
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_output
  doc: write result to FILE instead of standard output
  type: File?
  inputBinding:
    prefix: --output
- id: in_stable
  doc: stabilize sort by disabling last-resort comparison
  type: boolean?
  inputBinding:
    prefix: --stable
- id: in_buffer_size
  doc: use SIZE for main memory buffer
  type: long?
  inputBinding:
    prefix: --buffer-size
- id: in_field_separator
  doc: use SEP instead of non-blank to blank transition
  type: string?
  inputBinding:
    prefix: --field-separator
- id: in_temporary_directory
  doc: "use DIR for temporaries, not $TMPDIR or /tmp;\nmultiple options specify multiple\
    \ directories"
  type: Directory?
  inputBinding:
    prefix: --temporary-directory
- id: in_parallel
  doc: change the number of sorts run concurrently to N
  type: long?
  inputBinding:
    prefix: --parallel
- id: in_unique
  doc: "with -c, check for strict ordering;\nwithout -c, output only the first of\
    \ an equal run"
  type: boolean?
  inputBinding:
    prefix: --unique
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean?
  inputBinding:
    prefix: --zero-terminated
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write result to FILE instead of standard output
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sort
