class: CommandLineTool
id: seqhax_rebarcode.cwl
inputs:
- id: r1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: r2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: 'Output interleaved reads to FILE. Use - for stdout. (default: no output)'
  type: File
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- rebarcode
