version 1.0

task Plot2dpl {
  command <<<
    plot_2d_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}