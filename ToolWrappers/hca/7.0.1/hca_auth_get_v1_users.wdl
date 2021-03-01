version 1.0

task HcaAuthGetv1users {
  input {
    String? no_paginate
  }
  command <<<
    hca auth get_v1_users \
      ~{if defined(no_paginate) then ("--no-paginate " +  '"' + no_paginate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_paginate: "Do not automatically page the responses"
  }
  output {
    File out_stdout = stdout()
  }
}