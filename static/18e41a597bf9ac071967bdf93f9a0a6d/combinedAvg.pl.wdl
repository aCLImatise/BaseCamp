version 1.0

task CombinedAvgpl {
  command <<<
    combinedAvg_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}