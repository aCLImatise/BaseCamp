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
    docker: "quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}