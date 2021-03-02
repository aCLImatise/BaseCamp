version 1.0

task Statisticspm {
  command <<<
    Statistics_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}