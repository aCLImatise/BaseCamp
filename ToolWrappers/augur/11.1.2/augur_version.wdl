version 1.0

task AugurVersion {
  input {
    String augur
  }
  command <<<
    augur version \
      ~{augur}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.1.2--py_1"
  }
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}