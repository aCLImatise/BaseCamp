class: CommandLineTool
id: arv_normalize.cwl
inputs:
- id: extract
  doc: The file to extract from the input manifest
  type: string
  inputBinding:
    prefix: --extract
- id: strip
  doc: Strip authorization tokens
  type: boolean
  inputBinding:
    prefix: --strip
outputs: []
cwlVersion: v1.1
baseCommand:
- arv-normalize
