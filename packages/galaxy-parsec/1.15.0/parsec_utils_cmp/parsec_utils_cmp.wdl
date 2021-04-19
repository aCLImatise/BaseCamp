version 1.0

task ParsecUtilsCmp {
  input {
    String method
    String cmp_with
  }
  command <<<
    parsec utils cmp \
      ~{method} \
      ~{cmp_with}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    method: ""
    cmp_with: ""
  }
  output {
    File out_stdout = stdout()
  }
}