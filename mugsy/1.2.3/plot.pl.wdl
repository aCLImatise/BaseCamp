version 1.0

task Plotpl {
  command <<<
    plot_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}