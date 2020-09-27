version 1.0

task SelectBestRbcontigplbak {
  command <<<
    select_best_rbcontig_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}