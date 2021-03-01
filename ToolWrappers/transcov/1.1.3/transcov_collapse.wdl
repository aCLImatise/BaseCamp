version 1.0

task TranscovCollapse {
  input {
    String? matrices
  }
  command <<<
    transcov collapse \
      ~{matrices}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrices: ""
  }
  output {
    File out_stdout = stdout()
  }
}