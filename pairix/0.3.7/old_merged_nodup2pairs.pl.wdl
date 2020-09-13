version 1.0

task OldMergedNodup2pairspl {
  command <<<
    old_merged_nodup2pairs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}