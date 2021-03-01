version 1.0

task OldMergedNodup2pairspl {
  command <<<
    old_merged_nodup2pairs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}