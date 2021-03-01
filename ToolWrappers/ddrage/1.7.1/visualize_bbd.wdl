version 1.0

task VisualizeBbd {
  command <<<
    visualize_bbd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}