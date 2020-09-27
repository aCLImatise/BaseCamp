version 1.0

task Monitorpl {
  command <<<
    monitor_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}