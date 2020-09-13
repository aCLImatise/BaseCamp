version 1.0

task ArrowStatusFindStatusByValue {
  input {
    String value
  }
  command <<<
    arrow status findStatusByValue \
      ~{value}
  >>>
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}