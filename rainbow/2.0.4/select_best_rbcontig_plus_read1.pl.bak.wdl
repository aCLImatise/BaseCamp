version 1.0

task SelectBestRbcontigPlusRead1plbak {
  command <<<
    select_best_rbcontig_plus_read1_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}