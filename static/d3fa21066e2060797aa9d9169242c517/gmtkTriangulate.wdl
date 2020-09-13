version 1.0

task GmtkTriangulate {
  command <<<
    gmtkTriangulate
  >>>
  output {
    File out_stdout = stdout()
  }
}