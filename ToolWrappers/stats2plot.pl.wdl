version 1.0

task Stats2plotpl {
  command <<<
    stats2plot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}