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
    docker: "quay.io/biocontainers/augur:11.1.2--py_1"
  }
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}