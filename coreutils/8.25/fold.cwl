class: CommandLineTool
id: fold.cwl
inputs:
- id: bytes
  doc: bytes rather than columns
  type: string
  inputBinding:
    prefix: --bytes
- id: spaces
  doc: at spaces
  type: string
  inputBinding:
    prefix: --spaces
- id: width
  doc: use WIDTH columns instead of 80
  type: string
  inputBinding:
    prefix: --width
outputs: []
cwlVersion: v1.1
baseCommand:
- fold
