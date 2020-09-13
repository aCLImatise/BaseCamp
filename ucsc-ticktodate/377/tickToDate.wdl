version 1.0

task TickToDate {
  command <<<
    tickToDate
  >>>
  output {
    File out_stdout = stdout()
  }
}