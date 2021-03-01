version 1.0

task HcaAuthGetv1usergroups {
  input {
    String? user_id
    String? no_paginate
  }
  command <<<
    hca auth get_v1_user_groups \
      ~{if defined(user_id) then ("--user-id " +  '"' + user_id + '"') else ""} \
      ~{if defined(no_paginate) then ("--no-paginate " +  '"' + no_paginate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    user_id: "User ID (email)."
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}