version 1.0

task PlotDiagsR {
  command <<<
    plot_diags_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromeister:1.5.a--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}