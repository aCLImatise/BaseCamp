version 1.0

task SelectSecRbcontigplbak {
  command <<<
    select_sec_rbcontig_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}