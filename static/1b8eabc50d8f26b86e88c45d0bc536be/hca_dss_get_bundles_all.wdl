version 1.0

task HcaDssGetBundlesAll {
  input {
    String? replica
    String? prefix
    String? token
    String? per_page
    String? search_after
    Boolean? no_paginate
  }
  command <<<
    hca dss get-bundles-all \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(per_page) then ("--per-page " +  '"' + per_page + '"') else ""} \
      ~{if defined(search_after) then ("--search-after " +  '"' + search_after + '"') else ""} \
      ~{true="--no-paginate" false="" no_paginate}
  >>>
  parameter_meta {
    replica: "Replica to fetch from."
    prefix: "Used to specify the beginning of a particular bundle UUID.  Capitalized letters will be lower-cased as is done when users submit a uuid (all uuids have lower-cased letters upon ingestion into the dss).  Characters other than letters, numbers, and dashes are not allowed and will error. The specified character(s) will return all available bundle uuids starting with that character(s)."
    token: "Token to manage retries.  End users constructing queries should not set this parameter."
    per_page: "Max number of results to return per page."
    search_after: "**Search-After-Context**. An internal state pointer parameter for use with pagination. This parameter is referenced by the `Link` header as described in the \"Pagination\" section. The API client should not need to set this parameter directly; it should instead directly fetch the URL given in the `Link` header."
    no_paginate: "Do not automatically page the responses"
  }
}