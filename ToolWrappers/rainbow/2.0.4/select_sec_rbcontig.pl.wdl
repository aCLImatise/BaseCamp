version 1.0

task SelectSecRbcontigpl {
  command <<<
    select_sec_rbcontig_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}