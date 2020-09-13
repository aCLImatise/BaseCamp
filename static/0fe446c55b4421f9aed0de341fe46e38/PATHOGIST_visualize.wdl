version 1.0

task PATHOGISTVisualize {
  command <<<
    PATHOGIST visualize
  >>>
  output {
    File out_stdout = stdout()
  }
}