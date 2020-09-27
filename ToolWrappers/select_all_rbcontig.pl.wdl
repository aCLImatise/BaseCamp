version 1.0

task SelectAllRbcontigpl {
  command <<<
    select_all_rbcontig_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}