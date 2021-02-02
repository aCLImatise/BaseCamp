version 1.0

task RankCmfinderpl {
  command <<<
    rank_cmfinder_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}