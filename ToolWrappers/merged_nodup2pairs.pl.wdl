version 1.0

task MergedNodup2pairspl {
  command <<<
    merged_nodup2pairs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}