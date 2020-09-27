version 1.0

task FirstQuartileScorepl {
  command <<<
    firstQuartileScore_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}