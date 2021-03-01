version 1.0

task GmtkTriangulate {
  command <<<
    gmtkTriangulate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}