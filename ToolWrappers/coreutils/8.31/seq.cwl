class: CommandLineTool
id: seq.cwl
inputs:
- id: in_format
  doc: use printf style floating-point FORMAT
  type: string?
  inputBinding:
    prefix: --format
- id: in_separator
  doc: 'use STRING to separate numbers (default: \n)'
  type: string?
  inputBinding:
    prefix: --separator
- id: in_equal_width
  doc: equalize width by padding with leading zeroes
  type: boolean?
  inputBinding:
    prefix: --equal-width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seq
