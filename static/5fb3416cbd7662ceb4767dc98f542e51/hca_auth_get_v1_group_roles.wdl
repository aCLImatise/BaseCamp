version 1.0

task HcaAuthGetv1grouproles {
  input {
    String? group_id
    String? no_paginate
  }
  command <<<
    hca auth get_v1_group_roles \
      ~{if defined(group_id) then ("--group-id " +  '"' + group_id + '"') else ""} \
      ~{if defined(no_paginate) then ("--no-paginate " +  '"' + no_paginate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group_id: "The name of the group."
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}