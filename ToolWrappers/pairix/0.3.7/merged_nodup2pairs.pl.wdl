version 1.0

task MergedNodup2pairspl {
  command <<<
    merged_nodup2pairs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}