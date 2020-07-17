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
    Int? facet_depth
    File? file
  }
  command <<<
    ebisearch get_query_results \
      ~{if defined(domain) then ("--domain " +  '"' + domain + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{true="--order" false="" order} \
      ~{if defined(sort_field) then ("--sort_field " +  '"' + sort_field + '"') else ""} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{true="--field_url" false="" field_url} \
      ~{true="--view_url" false="" view_url} \
      ~{if defined(facets) then ("--facets " +  '"' + facets + '"') else ""} \
      ~{if defined(facet_fields) then ("--facet_fields " +  '"' + facet_fields + '"') else ""} \
      ~{if defined(facet_count) then ("--facet_count " +  '"' + facet_count + '"') else ""} \
      ~{if defined(facet_depth) then ("--facet_depth " +  '"' + facet_depth + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    domain: "Domain id in EBI (accessible with get_domains)"
    query: "Query (searchable fields accessible with get_fields with searchable     as type)"
    field: "(Multiple) Field to export (accessible with get_fields with    retrievable as type)"
    order: "[ascending|descending]  (Optional) Order to sort the results (optional), should come along     with \"sortfield\" and not allowed to use with \"sort\" parameters"
    sort_field: "(Optional) Field to sort on (accessible via get_fields with sortable     as option), should come along with \"sortfield\""
    sort: "(Optional, Multiple) Sorting criteria with field_id:order (field_id     accessible with get_fields with retrievable as type), should not be used     in conjunction with any of \"sortfield\" and \"order\" parameters"
    field_url: "Include the field links"
    view_url: "Include other view links"
    facets: "(Optional, Multiple) Facet selections to apply on search results     with facet_id:facet_value (facet_id accessible with get_fields with facet     as type)"
    facet_fields: "(Optional, Multiple) Facet field identifiers associated with facets     to retrieve (facet_id accessible with get_fields with facet as type)"
    facet_count: "(Optional) Number of facet values to retrieve"
    facet_depth: "(Optional) Number of levels in the facet hierarchy to retrieve"
    file: "(Optional) File to export the entry content"
  }
}