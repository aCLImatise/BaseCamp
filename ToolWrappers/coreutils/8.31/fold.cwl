class: CommandLineTool
id: fold.cwl
inputs:
- id: in_bytes
  doc: count bytes rather than columns
  type: boolean
  inputBinding:
    prefix: --bytes
- id: in_spaces
  doc: break at spaces
  type: boolean
  inputBinding:
    prefix: --spaces
- id: in_width
  doc: use WIDTH columns instead of 80
  type: long
  inputBinding:
    prefix: --width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fold
