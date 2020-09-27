version 1.0

task SelectBestRbcontigpl {
  command <<<
    select_best_rbcontig_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}