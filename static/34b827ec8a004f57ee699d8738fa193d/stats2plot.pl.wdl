version 1.0

task Stats2plotpl {
  command <<<
    stats2plot_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}