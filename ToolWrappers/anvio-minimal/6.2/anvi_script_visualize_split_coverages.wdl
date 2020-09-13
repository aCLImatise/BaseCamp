version 1.0

task Anviscriptvisualizesplitcoverages {
  command <<<
    anvi_script_visualize_split_coverages
  >>>
  output {
    File out_stdout = stdout()
  }
}