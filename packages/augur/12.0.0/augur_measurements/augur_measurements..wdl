version 1.0

task AugurMeasurements {
  input {
    String augur
  }
  command <<<
    augur measurements_ \
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