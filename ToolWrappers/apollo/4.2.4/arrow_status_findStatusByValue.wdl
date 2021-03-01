version 1.0

task ArrowStatusFindStatusByValue {
  input {
    String value
  }
  command <<<
    arrow status findStatusByValue \
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