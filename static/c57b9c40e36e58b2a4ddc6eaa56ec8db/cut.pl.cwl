class: CommandLineTool
id: cut.pl.cwl
inputs:
- id: in_quiet_mode_turn
  doc: ': Quiet mode: turn verbosity off (default verbose)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_set_number_row
  doc: ': Set the number of row headers to NUM (default 0).'
  type: long?
  inputBinding:
    prefix: -h
- id: in_change_input_output
  doc: ': Change the input and output delimiter to DELIM (default <tab>).'
  type: string?
  inputBinding:
    prefix: -d
- id: in_di
  doc: ': Change the input delimiter to DELIM (default <tab>).'
  type: string?
  inputBinding:
    prefix: -di
- id: in_do
  doc: ': Change the output delimiter to DELIM (default <tab>).'
  type: string?
  inputBinding:
    prefix: -do
- id: in__suppress_blanks
  doc: ':        Suppress blanks'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_invert_use_complement
  doc: ':        Invert. Use the complement of the fields specified in -f.'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_tight_tell_script
  doc: ":        Tight.  Tell the script to expect different number of columns in\n\
    each row so that it needs to recompute the column boundaries for\neach row.  Note\
    \ this option slows the script down somewhat."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_specify_column_ranges
  doc: ": specify column ranges to include.  RANGES are comma-\nseperated lists of\
    \ single columns or a range of columns\nfor example:\n5-6,2,1-3\nwould select\
    \ columns 1 through 6 except column 4.  Note\nthat 2 is redundantly specified\
    \ by no error results."
  type: long?
  inputBinding:
    prefix: -f
- id: in_specify_columns_ranges
  doc: ":  specify columns by names (instead of by numbers with -f). Assumes\nthe\
    \ first line is a header, and translates column names in <str>\ninto their respective\
    \ column numbers in the header. Supports\nmultiple ranges. Column names are assumed\
    \ to be unique and not to\ncontain any commas."
  type: string?
  inputBinding:
    prefix: -n
- id: in_file
  doc: ": get column names (as in -n) from specified file. each column name\nshould\
    \ appear on a separate line."
  type: File?
  inputBinding:
    prefix: -file
- id: in_zerobased_column_numbers
  doc: ':        zero-based column numbers.'
  type: boolean?
  inputBinding:
    prefix: '-0'
- id: in_preserve_empty_values
  doc: ':        preserve empty values.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_sk
  doc: ':       number of header columns (default 0)'
  type: boolean?
  inputBinding:
    prefix: -sk
- id: in_input_dot
  doc: 'OPTIONS are:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cut.pl
