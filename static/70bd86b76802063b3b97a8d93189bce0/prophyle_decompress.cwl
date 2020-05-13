class: CommandLineTool
id: prophyle_decompress.cwl
inputs:
- id: k
  doc: skip k-LCP construction
  type: boolean
  inputBinding:
    prefix: -K
- id: c
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle
- decompress
