version 1.0

task Statisticspm {
  command <<<
    Statistics_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}