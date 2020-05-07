class: CommandLineTool
id: nebulizer_add_key_OPTIONS.cwl
inputs:
- id: alias
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: galaxy_url
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: api_key
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- add_key
- OPTIONS
