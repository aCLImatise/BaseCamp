version 1.0

task TriangulateTimings {
  command <<<
    triangulateTimings
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}