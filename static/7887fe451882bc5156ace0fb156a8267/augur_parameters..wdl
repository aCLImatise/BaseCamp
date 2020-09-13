version 1.0

task AugurParameters {
  input {
    String augur
  }
  command <<<
    augur parameters_ \
      ~{augur}
  >>>
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}