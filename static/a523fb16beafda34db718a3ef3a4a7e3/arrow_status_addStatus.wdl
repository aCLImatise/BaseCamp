version 1.0

task ArrowStatusAddStatus {
  input {
    String value
  }
  command <<<
    arrow status addStatus \
      ~{value}
  >>>
  parameter_meta {
    value: ""
  }
  output {
    File out_stdout = stdout()
  }
}