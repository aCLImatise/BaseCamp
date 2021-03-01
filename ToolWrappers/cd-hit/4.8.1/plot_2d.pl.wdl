version 1.0

task Plot2dpl {
  command <<<
    plot_2d_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}