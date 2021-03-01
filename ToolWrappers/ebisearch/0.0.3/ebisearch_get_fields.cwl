class: CommandLineTool
id: ebisearch_get_fields.cwl
inputs:
- id: in_domain
  doc: "Domain id in EBI (accessible with\nget_domains)"
  type: string?
  inputBinding:
    prefix: --domain
- id: in_field_type
  doc: "[searchable|retrievable|sortable|facet|topterms]\nType fo field"
  type: boolean?
  inputBinding:
    prefix: --field_type
- id: in_file
  doc: (Optional) File to export the domain
  type: File?
  inputBinding:
    prefix: --file
- id: in_information
  doc: --help                          Show this message and exit.
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
- get_fields
