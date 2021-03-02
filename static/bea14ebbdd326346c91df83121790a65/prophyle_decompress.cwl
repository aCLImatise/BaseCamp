class: CommandLineTool
id: prophyle_decompress.cwl
inputs:
- id: in_skip_klcp_construction
  doc: skip k-LCP construction
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_advanced_configuration_json
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_str
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle
- decompress
