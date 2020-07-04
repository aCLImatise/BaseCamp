class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/seq.cwl
inputs:
- id: format
  doc: use printf style floating-point FORMAT
  type: string
  inputBinding:
    prefix: --format
- id: separator
  doc: 'use STRING to separate numbers (default: \n)'
  type: string
  inputBinding:
    prefix: --separator
- id: equal_width
  doc: equalize width by padding with leading zeroes
  type: boolean
  inputBinding:
    prefix: --equal-width
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seq
