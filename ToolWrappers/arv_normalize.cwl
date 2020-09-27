class: CommandLineTool
id: arv_normalize.cwl
inputs:
- id: in_extract
  doc: The file to extract from the input manifest
  type: File
  inputBinding:
    prefix: --extract
- id: in_strip
  doc: Strip authorization tokens
  type: boolean
  inputBinding:
    prefix: --strip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arv-normalize
