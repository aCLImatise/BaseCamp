version 1.0

task LynerThreshold {
  input {
    String value
  }
  command <<<
    lyner threshold \
      ~{value}
  >>>
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}