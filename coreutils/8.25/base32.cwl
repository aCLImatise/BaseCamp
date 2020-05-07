class: CommandLineTool
id: base32.cwl
inputs:
- id: decode
  doc: decode data
  type: boolean
  inputBinding:
    prefix: --decode
- id: ignore_garbage
  doc: when decoding, ignore non-alphabet characters
  type: boolean
  inputBinding:
    prefix: --ignore-garbage
- id: wrap
  doc: wrap encoded lines after COLS character (default 76). Use 0 to disable line
    wrapping
  type: string
  inputBinding:
    prefix: --wrap
outputs: []
cwlVersion: v1.1
baseCommand:
- base32
