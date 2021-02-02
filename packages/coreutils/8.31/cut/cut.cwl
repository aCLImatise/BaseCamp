class: CommandLineTool
id: cut.cwl
inputs:
- id: in_bytes
  doc: select only these bytes
  type: string
  inputBinding:
    prefix: --bytes
- id: in_characters
  doc: select only these characters
  type: string
  inputBinding:
    prefix: --characters
- id: in_delimiter
  doc: use DELIM instead of TAB for field delimiter
  type: string
  inputBinding:
    prefix: --delimiter
- id: in_fields
  doc: "select only these fields;  also print any line\nthat contains no delimiter\
    \ character, unless\nthe -s option is specified"
  type: string
  inputBinding:
    prefix: --fields
- id: in_ignored
  doc: (ignored)
  type: boolean
  inputBinding:
    prefix: -n
- id: in_complement
  doc: "complement the set of selected bytes, characters\nor fields"
  type: boolean
  inputBinding:
    prefix: --complement
- id: in_only_delimited
  doc: do not print lines not containing delimiters
  type: boolean
  inputBinding:
    prefix: --only-delimited
- id: in_output_delimiter
  doc: "use STRING as the output delimiter\nthe default is to use the input delimiter"
  type: string
  inputBinding:
    prefix: --output-delimiter
- id: in_zero_terminated
  doc: line delimiter is NUL, not newline
  type: boolean
  inputBinding:
    prefix: --zero-terminated
- id: in_first_mth_included
  doc: from first to M'th (included) byte, character or field
  type: boolean
  inputBinding:
    prefix: -M
- id: in_nth_byte_character
  doc: from N'th byte, character or field, to end of line
  type: string
  inputBinding:
    position: 0
- id: in_n_m
  doc: from N'th to M'th (included) byte, character or field
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cut
