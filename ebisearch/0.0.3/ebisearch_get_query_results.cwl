class: CommandLineTool
id: ebisearch_get_query_results.cwl
inputs:
- id: domain
  doc: Domain id in EBI (accessible with get_domains)
  type: string
  inputBinding:
    prefix: --domain
- id: query
  doc: Query (searchable fields accessible with get_fields with searchable     as
    type)
  type: string
  inputBinding:
    prefix: --query
- id: field
  doc: (Multiple) Field to export (accessible with get_fields with    retrievable
    as type)
  type: string
  inputBinding:
    prefix: --field
- id: order
  doc: '[ascending|descending]  (Optional) Order to sort the results (optional), should
    come along     with "sortfield" and not allowed to use with "sort" parameters'
  type: boolean
  inputBinding:
    prefix: --order
- id: sort_field
  doc: (Optional) Field to sort on (accessible via get_fields with sortable     as
    option), should come along with "sortfield"
  type: string
  inputBinding:
    prefix: --sort_field
- id: sort
  doc: (Optional, Multiple) Sorting criteria with field_id:order (field_id     accessible
    with get_fields with retrievable as type), should not be used     in conjunction
    with any of "sortfield" and "order" parameters
  type: string
  inputBinding:
    prefix: --sort
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
- id: facets
  doc: (Optional, Multiple) Facet selections to apply on search results     with facet_id:facet_value
    (facet_id accessible with get_fields with facet     as type)
  type: string
  inputBinding:
    prefix: --facets
- id: facet_fields
  doc: (Optional, Multiple) Facet field identifiers associated with facets     to
    retrieve (facet_id accessible with get_fields with facet as type)
  type: string
  inputBinding:
    prefix: --facet_fields
- id: facet_count
  doc: (Optional) Number of facet values to retrieve
  type: long
  inputBinding:
    prefix: --facet_count
- id: facet_depth
  doc: (Optional) Number of levels in the facet hierarchy to retrieve
  type: long
  inputBinding:
    prefix: --facet_depth
- id: file
  doc: (Optional) File to export the entry content
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- ebisearch
- get_query_results
