version 1.0

task TriangulateParallel {
  command <<<
    triangulateParallel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}