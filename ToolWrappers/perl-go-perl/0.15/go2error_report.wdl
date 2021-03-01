version 1.0

task Go2errorReport {
  command <<<
    go2error_report
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}