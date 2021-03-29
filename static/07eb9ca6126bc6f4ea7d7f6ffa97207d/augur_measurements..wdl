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
    docker: "quay.io/biocontainers/augur:11.3.0--py_0"
  }
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}