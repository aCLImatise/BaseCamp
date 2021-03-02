version 1.0

task LynerThreshold {
  input {
    String value
  }
  command <<<
    lyner threshold \
      ~{value}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}