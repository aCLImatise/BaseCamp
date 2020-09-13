version 1.0

task SelectAllRbcontigplbak {
  command <<<
    select_all_rbcontig_pl_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}