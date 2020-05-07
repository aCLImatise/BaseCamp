class: CommandLineTool
id: nebulizer_update_key.cwl
inputs:
- id: new_url
  doc: specify new URL for Galaxy instance
  type: string
  inputBinding:
    prefix: --new-url
- id: new_api_key
  doc: specify new API key for Galaxy instance
  type: string
  inputBinding:
    prefix: --new-api-key
- id: fetch_api_key
  doc: fetch new API key for Galaxy instance
  type: boolean
  inputBinding:
    prefix: --fetch-api-key
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
- update_key
