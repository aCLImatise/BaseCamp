version 1.0

task TriangulateTimings {
  command <<<
    triangulateTimings
  >>>
  output {
    File out_stdout = stdout()
  }
}