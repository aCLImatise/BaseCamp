version 1.0

task FCSflowVizR {
  command <<<
    FCSflowViz_R
  >>>
  output {
    File out_stdout = stdout()
  }
}