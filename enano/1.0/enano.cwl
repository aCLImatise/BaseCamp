class: CommandLineTool
id: enano.cwl
inputs:
- id: c
  doc: To use MAX COMPRESION MODE. Default is FAST MODE.
  type: boolean
  inputBinding:
    prefix: -c
- id: k
  doc: Base sequence context length. Default is 7 (max 13).
  type: long
  inputBinding:
    prefix: -k
- id: l
  doc: Length of the DNA sequence context. Default is 6.
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: Maximum number of threads allowed to use by the compressor. Default is 8.
  type: string
  inputBinding:
    prefix: -t
- id: t
  doc: Maximum number of threads allowed to use by the decompressor. Default is 8.
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- enano
