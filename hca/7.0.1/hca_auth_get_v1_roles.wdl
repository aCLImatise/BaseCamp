version 1.0

task HcaAuthGetV1Roles {
  input {
    Boolean? no_paginate
    String? next_token
  }
  command <<<
    hca auth get-v1-roles \
      ~{true="--no-paginate" false="" no_paginate} \
      ~{if defined(next_token) then ("--next-token " +  '"' + next_token + '"') else ""}
  >>>
  parameter_meta {
    no_paginate: "Do not automatically page the responses"
    next_token: ""
  }
}