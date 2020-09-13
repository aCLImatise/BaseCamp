version 1.0

task HcaDssGetcollections {
  input {
    Int? per_page
    String? start_at
    Boolean? no_paginate
  }
  command <<<
    hca dss get_collections \
      ~{if defined(per_page) then ("--per-page " +  '"' + per_page + '"') else ""} \
      ~{if defined(start_at) then ("--start-at " +  '"' + start_at + '"') else ""} \
      ~{if (no_paginate) then "--no-paginate" else ""}
  >>>
  parameter_meta {
    per_page: "Max number of results to return per page."
    start_at: "An internal state pointer parameter for use with pagination. This parameter is referenced by the `Link` header as described in the \\\"Pagination\\\" section. The API client should not need to set this parameter directly; it should instead directly fetch the URL given in the `Link` header."
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}