class: CommandLineTool
id: nebulizer_list_keys.cwl
inputs:
- id: in_name
  doc: list only aliases matching name. Can include glob-style
  type: string?
  inputBinding:
    prefix: --name
- id: in_wild_cards_dot
  doc: -s, --show-api-keys  show the API key string associated with each alias
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- list_keys
