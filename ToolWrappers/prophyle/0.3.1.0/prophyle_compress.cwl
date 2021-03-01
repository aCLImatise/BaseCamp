class: CommandLineTool
id: prophyle_compress.cwl
inputs:
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
- compress
