version 1.0

task SummaryRankpl {
  command <<<
    summary_rank_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}