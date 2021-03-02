version 1.0

task FCSflowVizR {
  command <<<
    FCSflowViz_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}