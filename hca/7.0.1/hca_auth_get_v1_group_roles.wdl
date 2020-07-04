version 1.0

task HcaAuthGetV1GroupRoles {
  input {
    Boolean? no_paginate
    String? group_id
  }
  command <<<
    hca auth get-v1-group-roles \
      ~{true="--no-paginate" false="" no_paginate} \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""}
  >>>
  parameter_meta {
    no_paginate: "Do not automatically page the responses"
    group_id: ""
  }
}