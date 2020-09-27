class: CommandLineTool
id: base32.cwl
inputs:
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- base32
