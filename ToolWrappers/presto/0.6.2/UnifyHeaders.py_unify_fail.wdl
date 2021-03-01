version 1.0

task UnifyHeaderspyUnifyfail {
  input {
    String unify_headers_do_tpy
  }
  command <<<
    UnifyHeaders_py unify_fail \
      ~{unify_headers_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    unify_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}