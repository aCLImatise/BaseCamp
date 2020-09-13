version 1.0

task CombinedAvgpl {
  command <<<
    combinedAvg_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}