version 1.0

task HcaDssPostsearch {
  input {
    String? es_query
    String? output_format
    String? replica
    Int? per_page
    String? search_after
    Boolean? no_paginate
  }
  command <<<
    hca dss post_search \
      ~{if defined(es_query) then ("--es-query " +  '"' + es_query + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(per_page) then ("--per-page " +  '"' + per_page + '"') else ""} \
      ~{if defined(search_after) then ("--search-after " +  '"' + search_after + '"') else ""} \
      ~{if (no_paginate) then "--no-paginate" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    es_query: "Elasticsearch query"
    output_format: "Specifies the output format. The default format, `summary`, is a list of UUIDs for bundles that match the query. Set this parameter to `raw` to get the verbatim JSON metadata for bundles that match the query. When using `output_format raw` the `per_page` size is limit to no more than 10 to avoid excessively large response sizes."
    replica: "Replica to search."
    per_page: "Max number of results to return per page. When using `output_format raw` the `per_page` size is limit to no more than 10 to avoid excessively large response sizes."
    search_after: "**Search-After-Context**. An internal state pointer parameter for use with pagination. This parameter is referenced by the `Link` header as described in the \\\"Pagination\\\" section. The API client should not need to set this parameter directly; it should instead directly fetch the URL given in the `Link` header."
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}