class: CommandLineTool
id: basenc.cwl
inputs:
- id: in_base_six_four
  doc: same as 'base64' program (RFC4648 section 4)
  type: boolean
  inputBinding:
    prefix: --base64
- id: in_base_six_four_url
  doc: file- and url-safe base64 (RFC4648 section 5)
  type: boolean
  inputBinding:
    prefix: --base64url
- id: in_base_three_two
  doc: same as 'base32' program (RFC4648 section 6)
  type: boolean
  inputBinding:
    prefix: --base32
- id: in_base_three_two_hex
  doc: extended hex alphabet base32 (RFC4648 section 7)
  type: boolean
  inputBinding:
    prefix: --base32hex
- id: in_base_one_six
  doc: hex encoding (RFC4648 section 8)
  type: boolean
  inputBinding:
    prefix: --base16
- id: in_base_two_ms_bf
  doc: bit string with most significant bit (msb) first
  type: boolean
  inputBinding:
    prefix: --base2msbf
- id: in_base_two_lsb_f
  doc: bit string with least significant bit (lsb) first
  type: boolean
  inputBinding:
    prefix: --base2lsbf
- id: in_decode
  doc: decode data
  type: boolean
  inputBinding:
    prefix: --decode
- id: in_ignore_garbage
  doc: when decoding, ignore non-alphabet characters
  type: boolean
  inputBinding:
    prefix: --ignore-garbage
- id: in_wrap
  doc: "wrap encoded lines after COLS character (default 76).\nUse 0 to disable line\
    \ wrapping"
  type: long
  inputBinding:
    prefix: --wrap
- id: in_z_eight_five
  doc: "ascii85-like encoding (ZeroMQ spec:32/Z85);\nwhen encoding, input length must\
    \ be a multiple of 4;\nwhen decoding, input length must be a multiple of 5"
  type: boolean
  inputBinding:
    prefix: --z85
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- basenc
