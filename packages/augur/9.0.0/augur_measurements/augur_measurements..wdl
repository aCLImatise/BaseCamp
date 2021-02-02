version 1.0

task AugurMeasurements {
  input {
    String augur
  }
  command <<<
    augur measurements_ \
      ~{augur}
  >>>
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}