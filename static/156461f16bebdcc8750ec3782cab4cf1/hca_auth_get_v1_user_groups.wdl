version 1.0

task HcaAuthGetV1UserGroups {
  input {
    Boolean? no_paginate
    String? user_id
  }
  command <<<
    hca auth get-v1-user-groups \
      ~{true="--no-paginate" false="" no_paginate} \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""}
  >>>
  parameter_meta {
    no_paginate: "Do not automatically page the responses"
    user_id: ""
  }
}