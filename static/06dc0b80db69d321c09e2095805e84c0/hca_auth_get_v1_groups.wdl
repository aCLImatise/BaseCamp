version 1.0

task HcaAuthGetv1groups {
  input {
    String? next_token
    String? per_page
    Boolean? no_paginate
  }
  command <<<
    hca auth get_v1_groups \
      ~{if defined(next_token) then ("--next-token " +  '"' + next_token + '"') else ""} \
      ~{if defined(per_page) then ("--per-page " +  '"' + per_page + '"') else ""} \
      ~{if (no_paginate) then "--no-paginate" else ""}
  >>>
  parameter_meta {
    next_token: ""
    per_page: ""
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}