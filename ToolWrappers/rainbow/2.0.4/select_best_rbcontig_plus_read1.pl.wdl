version 1.0

task SelectBestRbcontigPlusRead1pl {
  command <<<
    select_best_rbcontig_plus_read1_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}