version 1.0

task BlockclustPlotr {
  command <<<
    blockclust_plot_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}