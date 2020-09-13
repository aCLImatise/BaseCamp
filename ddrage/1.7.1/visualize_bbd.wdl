version 1.0

task VisualizeBbd {
  command <<<
    visualize_bbd
  >>>
  output {
    File out_stdout = stdout()
  }
}