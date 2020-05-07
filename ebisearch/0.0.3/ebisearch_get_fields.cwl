class: CommandLineTool
id: ebisearch_get_fields.cwl
inputs:
- id: domain
  doc: Domain id in EBI (accessible with get_domains)
  type: string
  inputBinding:
    prefix: --domain
- id: field_type
  doc: '[searchable|retrievable|sortable|facet|topterms] Type fo field'
  type: boolean
  inputBinding:
    prefix: --field_type
- id: file
  doc: (Optional) File to export the domain information
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- ebisearch
- get_fields
