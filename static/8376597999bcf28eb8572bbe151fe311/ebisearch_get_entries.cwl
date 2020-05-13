class: CommandLineTool
id: ebisearch_get_entries.cwl
inputs:
- id: domain
  doc: Domain id in EBI (accessible with get_domains)
  type: string
  inputBinding:
    prefix: --domain
- id: entry_id
  doc: (Multiple) Entry identifier to retrieve
  type: string
  inputBinding:
    prefix: --entry_id
- id: field
  doc: (Multiple) Field to export (accessible with get_fields with retrieva    ble
    as type
  type: string
  inputBinding:
    prefix: --field
- id: field_url
  doc: Include the field links
  type: boolean
  inputBinding:
    prefix: --field_url
- id: view_url
  doc: Include other view links
  type: boolean
  inputBinding:
    prefix: --view_url
- id: file
  doc: (Optional) File to export the entry content
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- ebisearch
- get_entries
