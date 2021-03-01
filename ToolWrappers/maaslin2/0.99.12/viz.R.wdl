version 1.0

task VizR {
  command <<<
    viz_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}