class: CommandLineTool
id: od.cwl
inputs:
- id: in_address_radix
  doc: "output format for file offsets; RADIX is one\nof [doxn], for Decimal, Octal,\
    \ Hex or None"
  type: double?
  inputBinding:
    prefix: --address-radix
- id: in_endian
  doc: ={big|little}   swap input bytes according the specified order
  type: boolean?
  inputBinding:
    prefix: --endian
- id: in_skip_bytes
  doc: skip BYTES input bytes first
  type: string?
  inputBinding:
    prefix: --skip-bytes
- id: in_read_bytes
  doc: limit dump to BYTES input bytes
  type: string?
  inputBinding:
    prefix: --read-bytes
- id: in_strings
  doc: "[=BYTES]  output strings of at least BYTES graphic chars;\n3 is implied when\
    \ BYTES is not specified"
  type: long?
  inputBinding:
    prefix: --strings
- id: in_format
  doc: select output format or formats
  type: string?
  inputBinding:
    prefix: --format
- id: in_output_duplicates
  doc: do not use * to mark line suppression
  type: boolean?
  inputBinding:
    prefix: --output-duplicates
- id: in_output_bytes_bytes
  doc: "[BYTES], --width[=BYTES]  output BYTES bytes per output line;\n32 is implied\
    \ when BYTES is not specified"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_traditional
  doc: accept arguments in third form above
  type: boolean?
  inputBinding:
    prefix: --traditional
- id: in_same_t_select_named
  doc: same as -t a,  select named characters, ignoring high-order bit
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_select_octal_bytes
  doc: same as -t o1, select octal bytes
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_same_t_select_characters
  doc: same as -t c,  select printable characters or backslash escapes
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_same_t_u_select
  doc: same as -t u2, select unsigned decimal 2-byte units
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_same_t_ff
  doc: same as -t fF, select floats
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_same_t_select_decimal_ints
  doc: same as -t dI, select decimal ints
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_same_t_dl
  doc: same as -t dL, select decimal longs
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_same_octal_byte
  doc: same as -t o2, select octal 2-byte units
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_same_t_select_decimal_byte
  doc: same as -t d2, select decimal 2-byte units
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_same_t_select_hexadecimal
  doc: same as -t x2, select hexadecimal 2-byte units
  type: boolean?
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- od
