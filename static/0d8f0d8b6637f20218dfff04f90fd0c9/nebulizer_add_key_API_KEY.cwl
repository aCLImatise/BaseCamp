class: CommandLineTool
id: nebulizer_add_key_API_KEY.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alias
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: galaxy_url
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: api_key
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- add_key
- API_KEY
