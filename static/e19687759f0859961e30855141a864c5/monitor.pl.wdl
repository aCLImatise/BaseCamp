version 1.0

task Monitorpl {
  command <<<
    monitor_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}