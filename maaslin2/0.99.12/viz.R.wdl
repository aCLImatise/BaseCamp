version 1.0

task VizR {
  command <<<
    viz_R
  >>>
  output {
    File out_stdout = stdout()
  }
}