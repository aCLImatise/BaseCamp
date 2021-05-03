version 1.0

task SelectAllRbcontigplbak {
  command <<<
    select_all_rbcontig_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}