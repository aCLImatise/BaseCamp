class: CommandLineTool
id: nebulizer_add_key_ALIAS.cwl
inputs:
- id: in_galaxy_url
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_api_key
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- add_key
- ALIAS
