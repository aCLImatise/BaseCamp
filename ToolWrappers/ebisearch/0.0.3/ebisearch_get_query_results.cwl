class: CommandLineTool
id: ebisearch_get_query_results.cwl
inputs:
- id: in_domain
  doc: "Domain id in EBI (accessible with\nget_domains)"
  type: string?
  inputBinding:
    prefix: --domain
- id: in_query
  doc: "Query (searchable fields accessible with\nget_fields with searchable     as\
    \ type)"
  type: string?
  inputBinding:
    prefix: --query
- id: in_field
  doc: "(Multiple) Field to export (accessible with\nget_fields with    retrievable\
    \ as type)"
  type: string?
  inputBinding:
    prefix: --field
- id: in_order
  doc: "[ascending|descending]  (Optional) Order to sort the results\n(optional),\
    \ should come along     with\n\"sortfield\" and not allowed to use with\n\"sort\"\
    \ parameters"
  type: boolean?
  inputBinding:
    prefix: --order
- id: in_sort_field
  doc: "(Optional) Field to sort on (accessible via\nget_fields with sortable    \
    \ as option),\nshould come along with \"sortfield\""
  type: string?
  inputBinding:
    prefix: --sort_field
- id: in_sort
  doc: "(Optional, Multiple) Sorting criteria with\nfield_id:order (field_id     accessible\
    \ with\nget_fields with retrievable as type), should\nnot be used     in conjunction\
    \ with any of\n\"sortfield\" and \"order\" parameters"
  type: string?
  inputBinding:
    prefix: --sort
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
- id: in_facets
  doc: "(Optional, Multiple) Facet selections to\napply on search results     with\n\
    facet_id:facet_value (facet_id accessible\nwith get_fields with facet     as type)"
  type: string?
  inputBinding:
    prefix: --facets
- id: in_facet_fields
  doc: "(Optional, Multiple) Facet field identifiers\nassociated with facets     to\
    \ retrieve\n(facet_id accessible with get_fields with\nfacet as type)"
  type: string?
  inputBinding:
    prefix: --facet_fields
- id: in_facet_count
  doc: (Optional) Number of facet values to
  type: long?
  inputBinding:
    prefix: --facet_count
- id: in_file
  doc: (Optional) File to export the entry content
  type: File?
  inputBinding:
    prefix: --file
- id: in_retrieve
  doc: --facet_depth INTEGER           (Optional) Number of levels in the facet
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
- get_query_results
