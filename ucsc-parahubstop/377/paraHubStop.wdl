version 1.0

task ParaHubStop {
  command <<<
    paraHubStop
  >>>
  output {
    File out_stdout = stdout()
  }
}