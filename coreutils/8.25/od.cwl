class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/od.cwl
inputs:
- id: address_radix
  doc: output format for file offsets; RADIX is one of [doxn], for Decimal, Octal,
    Hex or None
  type: string
  inputBinding:
    prefix: --address-radix
- id: endian
  doc: ={big|little}   swap input bytes according the specified order
  type: boolean
  inputBinding:
    prefix: --endian
- id: skip_bytes
  doc: skip BYTES input bytes first
  type: string
  inputBinding:
    prefix: --skip-bytes
- id: read_bytes
  doc: limit dump to BYTES input bytes
  type: string
  inputBinding:
    prefix: --read-bytes
- id: strings
  doc: '[=BYTES]  output strings of at least BYTES graphic chars; 3 is implied when
    BYTES is not specified'
  type: string
  inputBinding:
    prefix: --strings
- id: format
  doc: select output format or formats
  type: string
  inputBinding:
    prefix: --format
- id: output_duplicates
  doc: do not use * to mark line suppression
  type: boolean
  inputBinding:
    prefix: --output-duplicates
- id: output_bytes_bytes
  doc: '[BYTES], --width[=BYTES]  output BYTES bytes per output line; 32 is implied
    when BYTES is not specified --traditional           accept arguments in third
    form above --help display this help and exit --version output version information
    and exit'
  type: boolean
  inputBinding:
    prefix: -w
- id: same_t_select_named
  doc: same as -t a,  select named characters, ignoring high-order bit
  type: boolean
  inputBinding:
    prefix: -a
- id: same_t_select_octal
  doc: same as -t o1, select octal bytes
  type: boolean
  inputBinding:
    prefix: -b
- id: same_backslash_escapes
  doc: same as -t c,  select printable characters or backslash escapes
  type: boolean
  inputBinding:
    prefix: -c
- id: same_select_unsigned
  doc: same as -t u2, select unsigned decimal 2-byte units
  type: boolean
  inputBinding:
    prefix: -d
- id: t_ff_select
  doc: as -t fF, select floats
  type: string
  inputBinding:
    prefix: -f
- id: t_di_select
  doc: as -t dI, select decimal ints
  type: string
  inputBinding:
    prefix: -i
- id: t_dl_select
  doc: as -t dL, select decimal longs
  type: string
  inputBinding:
    prefix: -l
- id: t_select_octal
  doc: as -t o2, select octal 2-byte units
  type: string
  inputBinding:
    prefix: -o
- id: t_d_select
  doc: as -t d2, select decimal 2-byte units
  type: string
  inputBinding:
    prefix: -s
- id: t_select_hexadecimal
  doc: as -t x2, select hexadecimal 2-byte units
  type: string
  inputBinding:
    prefix: -x
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- od
