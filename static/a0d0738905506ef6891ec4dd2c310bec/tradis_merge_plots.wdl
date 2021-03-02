version 1.0

task TradisMergePlots {
  command <<<
    tradis_merge_plots
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}