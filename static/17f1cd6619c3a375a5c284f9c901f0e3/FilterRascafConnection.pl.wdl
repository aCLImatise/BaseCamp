version 1.0

task FilterRascafConnectionpl {
  command <<<
    FilterRascafConnection_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}