version 1.0

task ParaHubStop {
  command <<<
    paraHubStop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}