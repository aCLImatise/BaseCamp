version 1.0

task BlockclustPlotr {
  command <<<
    blockclust_plot_r
  >>>
  output {
    File out_stdout = stdout()
  }
}