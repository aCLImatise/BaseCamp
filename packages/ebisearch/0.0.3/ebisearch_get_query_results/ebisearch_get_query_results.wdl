version 1.0

task EbisearchGetQueryResults {
  input {
    String? domain
    String? query
    String? field
    Boolean? order
    String? sort_field
    String? sort
    Boolean? field_url
    Boolean? view_url
    String? facets
    String? facet_fields
    Int? facet_count
    File? file
    String retrieve
  }
  command <<<
    ebisearch get_query_results \
      ~{retrieve} \
      ~{if defined(domain) then ("--domain " +  '"' + domain + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if (order) then "--order" else ""} \
      ~{if defined(sort_field) then ("--sort_field " +  '"' + sort_field + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if (field_url) then "--field_url" else ""} \
      ~{if (view_url) then "--view_url" else ""} \
      ~{if defined(facets) then ("--facets " +  '"' + facets + '"') else ""} \
      ~{if defined(facet_fields) then ("--facet_fields " +  '"' + facet_fields + '"') else ""} \
      ~{if defined(facet_count) then ("--facet_count " +  '"' + facet_count + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    domain: "Domain id in EBI (accessible with\\nget_domains)"
    query: "Query (searchable fields accessible with\\nget_fields with searchable     as type)"
    field: "(Multiple) Field to export (accessible with\\nget_fields with    retrievable as type)"
    order: "[ascending|descending]  (Optional) Order to sort the results\\n(optional), should come along     with\\n\\\"sortfield\\\" and not allowed to use with\\n\\\"sort\\\" parameters"
    sort_field: "(Optional) Field to sort on (accessible via\\nget_fields with sortable     as option),\\nshould come along with \\\"sortfield\\\""
    sort: "(Optional, Multiple) Sorting criteria with\\nfield_id:order (field_id     accessible with\\nget_fields with retrievable as type), should\\nnot be used     in conjunction with any of\\n\\\"sortfield\\\" and \\\"order\\\" parameters"
    field_url: "Include the field links"
    view_url: "Include other view links"
    facets: "(Optional, Multiple) Facet selections to\\napply on search results     with\\nfacet_id:facet_value (facet_id accessible\\nwith get_fields with facet     as type)"
    facet_fields: "(Optional, Multiple) Facet field identifiers\\nassociated with facets     to retrieve\\n(facet_id accessible with get_fields with\\nfacet as type)"
    facet_count: "(Optional) Number of facet values to"
    file: "(Optional) File to export the entry content"
    retrieve: "--facet_depth INTEGER           (Optional) Number of levels in the facet"
  }
  output {
    File out_stdout = stdout()
  }
}