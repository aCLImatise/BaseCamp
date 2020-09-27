class: CommandLineTool
id: nebulizer_add_key_API_KEY.cwl
inputs:
- id: in_nebulizer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_add_key
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_alias
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_galaxy_url
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_api_key
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- add_key
- API_KEY
