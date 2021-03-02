version 1.0

task ArrowStatusShowStatus {
  input {
    String status
  }
  command <<<
    arrow status show_status \
      ~{status}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    status: ""
  }
  output {
    File out_stdout = stdout()
  }
}