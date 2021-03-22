version 1.0

task AugurAcids {
  input {
    String augur
  }
  command <<<
    augur acids_ \
      ~{augur}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.2.0--py_0"
  }
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}