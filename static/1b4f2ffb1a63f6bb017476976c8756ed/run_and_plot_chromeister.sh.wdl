version 1.0

task RunAndPlotChromeistersh {
  command <<<
    run_and_plot_chromeister_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromeister:1.5.a--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}