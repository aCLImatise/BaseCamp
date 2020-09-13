version 1.0

task HcaAuthGetv1userowns {
  input {
    String? user_id
    String? next_token
    String? per_page
    String? resource_type
    Boolean? no_paginate
  }
  command <<<
    hca auth get_v1_user_owns \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(next_token) then ("--next-token " +  '"' + next_token + '"') else ""} \
      ~{if defined(per_page) then ("--per-page " +  '"' + per_page + '"') else ""} \
      ~{if defined(resource_type) then ("--resource-type " +  '"' + resource_type + '"') else ""} \
      ~{if (no_paginate) then "--no-paginate" else ""}
  >>>
  parameter_meta {
    user_id: "User ID (email)."
    next_token: ""
    per_page: ""
    resource_type: ""
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}