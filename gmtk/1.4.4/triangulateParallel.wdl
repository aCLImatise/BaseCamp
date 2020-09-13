version 1.0

task TriangulateParallel {
  command <<<
    triangulateParallel
  >>>
  output {
    File out_stdout = stdout()
  }
}