version 1.0

task ArrowStatusAddStatus {
  input {
    String value
  }
  command <<<
    arrow status addStatus \
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