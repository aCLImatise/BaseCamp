class: CommandLineTool
id: nebulizer_update_key.cwl
inputs:
- id: in_new_url
  doc: specify new URL for Galaxy instance
  type: string
  inputBinding:
    prefix: --new-url
- id: in_new_api_key
  doc: specify new API key for Galaxy instance
  type: string
  inputBinding:
    prefix: --new-api-key
- id: in_fetch_api_key
  doc: fetch new API key for Galaxy instance
  type: boolean
  inputBinding:
    prefix: --fetch-api-key
- id: in_alias
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
- update_key
