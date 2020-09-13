version 1.0

task TradisMergePlots {
  command <<<
    tradis_merge_plots
  >>>
  output {
    File out_stdout = stdout()
  }
}