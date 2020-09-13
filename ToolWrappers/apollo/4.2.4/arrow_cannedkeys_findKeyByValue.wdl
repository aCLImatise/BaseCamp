version 1.0

task ArrowCannedkeysFindKeyByValue {
  input {
    String value
  }
  command <<<
    arrow cannedkeys findKeyByValue \
      ~{value}
  >>>
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}