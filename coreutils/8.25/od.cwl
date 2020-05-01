#!/usr/bin/env cwl-runner

baseCommand:
- od
class: CommandLineTool
cwlVersion: v1.0
id: od
inputs:
- doc: '512'
  id: b
  inputBinding:
    position: 0
  type: string
- doc: '1000'
  id: kb
  inputBinding:
    position: 1
  type: string
- doc: '1024'
  id: k
  inputBinding:
    position: 2
  type: string
- doc: 1000*1000
  id: mb
  inputBinding:
    position: 3
  type: string
- doc: 1024*1024
  id: m
  inputBinding:
    position: 4
  type: string
- doc: output format for file offsets; RADIX is one of [doxn], for Decimal, Octal,
    Hex or None
  id: address_radix
  inputBinding:
    prefix: --address-radix
  type: string
- doc: ={big|little}   swap input bytes according the specified order
  id: endian
  inputBinding:
    prefix: --endian
  type: boolean
- doc: skip BYTES input bytes first
  id: skip_bytes
  inputBinding:
    prefix: --skip-bytes
  type: string
- doc: limit dump to BYTES input bytes
  id: read_bytes
  inputBinding:
    prefix: --read-bytes
  type: string
- doc: '[=BYTES]  output strings of at least BYTES graphic chars; 3 is implied when
    BYTES is not specified'
  id: strings
  inputBinding:
    prefix: --strings
  type: string
- doc: select output format or formats
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: do not use * to mark line suppression
  id: output_duplicates
  inputBinding:
    prefix: --output-duplicates
  type: boolean
- doc: '[BYTES], --width[=BYTES]  output BYTES bytes per output line; 32 is implied
    when BYTES is not specified --traditional           accept arguments in third
    form above --help display this help and exit --version output version information
    and exit'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: same as -t a,  select named characters, ignoring high-order bit
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: same as -t o1, select octal bytes
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: same as -t c,  select printable characters or backslash escapes
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: same as -t u2, select unsigned decimal 2-byte units
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: as -t fF, select floats
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: as -t dI, select decimal ints
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: as -t dL, select decimal longs
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: as -t o2, select octal 2-byte units
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: as -t d2, select decimal 2-byte units
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: as -t x2, select hexadecimal 2-byte units
  id: x
  inputBinding:
    prefix: -x
  type: string
