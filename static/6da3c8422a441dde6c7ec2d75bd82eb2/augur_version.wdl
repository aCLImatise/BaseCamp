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
    docker: "quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}