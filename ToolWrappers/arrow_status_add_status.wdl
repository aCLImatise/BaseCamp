version 1.0

task ArrowStatusAddStatus {
  input {
    String status
  }
  command <<<
    arrow status add_status \
      ~{status}
  >>>
  parameter_meta {
    status: ""
  }
  output {
    File out_stdout = stdout()
  }
}