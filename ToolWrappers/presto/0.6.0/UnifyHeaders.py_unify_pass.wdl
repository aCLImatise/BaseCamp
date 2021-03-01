version 1.0

task UnifyHeaderspyUnifypass {
  input {
    String unify_headers_do_tpy
  }
  command <<<
    UnifyHeaders_py unify_pass \
      ~{unify_headers_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unify_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}