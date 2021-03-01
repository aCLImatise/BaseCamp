class: CommandLineTool
id: split.cwl
inputs:
- id: in_suffix_length
  doc: generate suffixes of length N (default 2)
  type: long?
  inputBinding:
    prefix: --suffix-length
- id: in_additional_suffix
  doc: append an additional SUFFIX to file names
  type: File?
  inputBinding:
    prefix: --additional-suffix
- id: in_bytes
  doc: put SIZE bytes per output file
  type: long?
  inputBinding:
    prefix: --bytes
- id: in_line_bytes
  doc: put at most SIZE bytes of records per output file
  type: long?
  inputBinding:
    prefix: --line-bytes
- id: in_use_numeric_suffixes
  doc: use numeric suffixes starting at 0, not alphabetic
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_numeric_suffixes
  doc: '[=FROM]  same as -d, but allow setting the start value'
  type: boolean?
  inputBinding:
    prefix: --numeric-suffixes
- id: in_use_hex_suffixes
  doc: use hex suffixes starting at 0, not alphabetic
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_hex_suffixes
  doc: '[=FROM]  same as -x, but allow setting the start value'
  type: boolean?
  inputBinding:
    prefix: --hex-suffixes
- id: in_elide_empty_files
  doc: do not generate empty output files with '-n'
  type: boolean?
  inputBinding:
    prefix: --elide-empty-files
- id: in_filter
  doc: write to shell COMMAND; file name is $FILE
  type: File?
  inputBinding:
    prefix: --filter
- id: in_lines
  doc: put NUMBER lines/records per output file
  type: long?
  inputBinding:
    prefix: --lines
- id: in_number
  doc: generate CHUNKS output files; see explanation below
  type: long?
  inputBinding:
    prefix: --number
- id: in_separator
  doc: "use SEP instead of newline as the record separator;\n'\\0' (zero) specifies\
    \ the NUL character"
  type: long?
  inputBinding:
    prefix: --separator
- id: in_unbuffered
  doc: immediately copy input to output with '-n r/...'
  type: boolean?
  inputBinding:
    prefix: --unbuffered
- id: in_verbose
  doc: "print a diagnostic just before each\noutput file is opened"
  type: File?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_verbose
  doc: "print a diagnostic just before each\noutput file is opened"
  type: File?
  outputBinding:
    glob: $(inputs.in_verbose)
hints: []
cwlVersion: v1.1
baseCommand:
- split
