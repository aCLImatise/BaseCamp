version 1.0

task TriangulateGA {
  command <<<
    triangulateGA
  >>>
  output {
    File out_stdout = stdout()
  }
}