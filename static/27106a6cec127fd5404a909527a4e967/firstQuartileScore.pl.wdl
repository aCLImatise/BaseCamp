version 1.0

task FirstQuartileScorepl {
  command <<<
    firstQuartileScore_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}