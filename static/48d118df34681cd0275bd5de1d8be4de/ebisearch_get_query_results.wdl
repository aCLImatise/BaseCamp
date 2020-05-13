version 1.0

task EbisearchGetQueryResults {
  input {
    String domainDomain
    String queryQuery
    String fieldField
    Boolean orderOrder
    String sortSortField
    String sortSort
    Boolean fieldFieldUrl
    Boolean viewViewUrl
    String facetsFacets
    String facetFacetFields
    Int facetFacetCount
    Int facetFacetDepth
    File fileFile
  }
  command <<<
    ebisearch get_query_results \
      ~{if defined(domainDomain) then ("--domain " +  '"' + domainDomain + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(fieldField) then ("--field " +  '"' + fieldField + '"') else ""} \
      ~{true="--order" false="" orderOrder} \
      ~{if defined(sortSortField) then ("--sort_field " +  '"' + sortSortField + '"') else ""} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{true="--field_url" false="" fieldFieldUrl} \
      ~{true="--view_url" false="" viewViewUrl} \
      ~{if defined(facetsFacets) then ("--facets " +  '"' + facetsFacets + '"') else ""} \
      ~{if defined(facetFacetFields) then ("--facet_fields " +  '"' + facetFacetFields + '"') else ""} \
      ~{if defined(facetFacetCount) then ("--facet_count " +  '"' + facetFacetCount + '"') else ""} \
      ~{if defined(facetFacetDepth) then ("--facet_depth " +  '"' + facetFacetDepth + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""}
  >>>
}