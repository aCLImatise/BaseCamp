class: CommandLineTool
id: split.cwl
inputs:
- id: suffix_length
  doc: generate suffixes of length N (default 2)
  type: string
  inputBinding:
    prefix: --suffix-length
- id: additional_suffix
  doc: append an additional SUFFIX to file names
  type: string
  inputBinding:
    prefix: --additional-suffix
- id: bytes
  doc: put SIZE bytes per output file
  type: long
  inputBinding:
    prefix: --bytes
- id: line_bytes
  doc: put at most SIZE bytes of records per output file
  type: long
  inputBinding:
    prefix: --line-bytes
- id: d
  doc: use numeric suffixes starting at 0, not alphabetic
  type: boolean
  inputBinding:
    prefix: -d
- id: numeric_suffixes
  doc: '[=FROM]  same as -d, but allow setting the start value'
  type: boolean
  inputBinding:
    prefix: --numeric-suffixes
- id: elide_empty_files
  doc: do not generate empty output files with '-n'
  type: boolean
  inputBinding:
    prefix: --elide-empty-files
- id: filter
  doc: write to shell COMMAND; file name is $FILE
  type: string
  inputBinding:
    prefix: --filter
- id: lines
  doc: put NUMBER lines/records per output file
  type: string
  inputBinding:
    prefix: --lines
- id: number
  doc: generate CHUNKS output files; see explanation below
  type: string
  inputBinding:
    prefix: --number
- id: separator
  doc: use SEP instead of newline as the record separator; '\0' (zero) specifies the
    NUL character
  type: string
  inputBinding:
    prefix: --separator
- id: unbuffered
  doc: immediately copy input to output with '-n r/...'
  type: boolean
  inputBinding:
    prefix: --unbuffered
- id: verbose
  doc: print a diagnostic just before each output file is opened
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- split
