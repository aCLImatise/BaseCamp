version 1.0

task AugurParameters {
  input {
    String augur
  }
  command <<<
    augur parameters_ \
      ~{augur}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    augur: ""
  }
  output {
    File out_stdout = stdout()
  }
}