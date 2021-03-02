class: CommandLineTool
id: ebisearch_get_entries.cwl
inputs:
- id: in_domain
  doc: Domain id in EBI (accessible with get_domains)
  type: string?
  inputBinding:
    prefix: --domain
- id: in_entry_id
  doc: (Multiple) Entry identifier to retrieve
  type: string?
  inputBinding:
    prefix: --entry_id
- id: in_field
  doc: (Multiple) Field to export (accessible with get_fields with
  type: string?
  inputBinding:
    prefix: --field
- id: in_field_url
  doc: Include the field links
  type: boolean?
  inputBinding:
    prefix: --field_url
- id: in_view_url
  doc: Include other view links
  type: boolean?
  inputBinding:
    prefix: --view_url
- id: in_file
  doc: (Optional) File to export the entry content
  type: File?
  inputBinding:
    prefix: --file
- id: in_re_tri_eva
  doc: ble as type
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
- ebisearch
- get_entries
