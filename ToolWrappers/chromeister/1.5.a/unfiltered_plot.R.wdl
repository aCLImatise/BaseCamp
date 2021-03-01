version 1.0

task UnfilteredPlotR {
  command <<<
    unfiltered_plot_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromeister:1.5.a--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}