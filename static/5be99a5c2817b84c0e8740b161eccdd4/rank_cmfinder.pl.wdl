version 1.0

task RankCmfinderpl {
  command <<<
    rank_cmfinder_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}