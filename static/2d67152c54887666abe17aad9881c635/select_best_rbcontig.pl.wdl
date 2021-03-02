version 1.0

task SelectBestRbcontigpl {
  command <<<
    select_best_rbcontig_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}