version 1.0

task SummaryRankpl {
  command <<<
    summary_rank_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}