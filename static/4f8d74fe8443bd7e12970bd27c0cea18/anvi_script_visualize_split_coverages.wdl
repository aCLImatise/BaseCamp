version 1.0

task Anviscriptvisualizesplitcoverages {
  command <<<
    anvi_script_visualize_split_coverages
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}