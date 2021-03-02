version 1.0

task TriangulateGA {
  command <<<
    triangulateGA
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}